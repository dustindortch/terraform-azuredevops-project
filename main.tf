terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "~> 0.10"
    }
  }
}

resource "azuredevops_project" "project" {
  name               = var.name
  description        = var.description
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template

  features = {
    "testplans"    = var.enable_testplans ? "enabled" : "disabled"
    "artifacts"    = var.enable_artifacts ? "enabled" : "disabled"
    "boards"       = var.enable_boards ? "enabled" : "disabled"
    "repositories" = var.enable_repositories ? "enabled" : "disabled"
    "pipelines"    = var.enable_pipelines ? "enabled" : "disabled"
  }

  lifecycle {
    precondition {
      condition = anytrue([
        alltrue([
          length(var.repositories) > 0,
          var.enable_repositories
        ]),
        length(var.repositories) == 0,
      ])
      error_message = "Repositories feature must be enabled if repositories are defined."
    }
  }
}

resource "azuredevops_git_repository" "repositories" {
  for_each = toset(var.repositories)

  project_id = azuredevops_project.project.id
  name       = each.key

  initialization {
    init_type = "Clean"
  }

  lifecycle {
    ignore_changes = [
      initialization,
    ]
  }
}

resource "azuredevops_git_repository_branch" "branches" {
  for_each = toset(var.repositories)

  repository_id = azuredevops_git_repository.repositories[each.key].id
  name          = "main"
  ref_branch    = azuredevops_git_repository.repositories[each.key].default_branch
}
