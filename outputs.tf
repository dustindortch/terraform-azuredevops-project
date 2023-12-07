output "repository_names" {
  value = length(azuredevops_git_repository.repositories) > 0 ? azuredevops_git_repository.repositories.*.name : null
}

output "repository_urls" {
  value = length(azuredevops_git_repository.repositories) > 0 ? azuredevops_git_repository.repositories.*.remote_url : null
}
