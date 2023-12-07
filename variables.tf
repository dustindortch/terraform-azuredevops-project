variable "name" {
  description = "Azure DevOps project name."
  type        = string
}

variable "description" {
  default     = ""
  description = "Azure DevOps project description."
  type        = string
}

variable "visibility" {
  default     = "private"
  description = "Specifies the visibility of the Project. Valid values: private or public. Defaults to private."
  type        = string

  validation {
    condition     = contains(["public", "private"], var.visibility)
    error_message = "Invalid visibility. Valid values: private or public."
  }
}

variable "version_control" {
  default     = "Git"
  description = "Specifies the version control system. Valid values: Git or Tfvc. Defaults to Git."
  type        = string

  validation {
    condition     = contains(["Git", "Tfvs"], var.version_control)
    error_message = "Invalid version_control. Valid values: Git or Tfvs."
  }
}

variable "work_item_template" {
  description = "Specifies the work item template. Valid values: Agile, Basic, CMMI, Scrum or a custom, pre-existing one. Defaults to Agile. An empty string will use the parent organization default."
  default     = "Agile"
  type        = string

  validation {
    condition     = contains(["Agile", "Basic", "CMMI", "Scrum"], var.work_item_template)
    error_message = "Invalid work_item_template. Valid values: Agile, Basic, CMMI, or Scrum."
  }
}

variable "enable_testplans" {
  default     = false
  description = "Enable test plans feature."
  type        = bool
}

variable "enable_artifacts" {
  default     = false
  description = "Enable artifacts feature."
  type        = bool
}

variable "enable_boards" {
  default     = false
  description = "Enable boards feature."
  type        = bool
}

variable "enable_repositories" {
  default     = false
  description = "Enable repositories feature."
  type        = bool
}

variable "enable_pipelines" {
  default     = false
  description = "Enable pipelines feature."
  type        = bool
}

variable "source_url" {
  default     = ""
  description = "Source repository URL."
  type        = string
}

variable "repositories" {
  default     = []
  description = "List or repositories for the project."
  type        = list(string)
}
