<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | ~> 0.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | ~> 0.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_git_repository.repositories](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/git_repository) | resource |
| [azuredevops_git_repository_branch.branches](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/git_repository_branch) | resource |
| [azuredevops_project.project](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Azure DevOps project description. | `string` | `""` | no |
| <a name="input_enable_artifacts"></a> [enable\_artifacts](#input\_enable\_artifacts) | Enable artifacts feature. | `bool` | `false` | no |
| <a name="input_enable_boards"></a> [enable\_boards](#input\_enable\_boards) | Enable boards feature. | `bool` | `false` | no |
| <a name="input_enable_pipelines"></a> [enable\_pipelines](#input\_enable\_pipelines) | Enable pipelines feature. | `bool` | `false` | no |
| <a name="input_enable_repositories"></a> [enable\_repositories](#input\_enable\_repositories) | Enable repositories feature. | `bool` | `false` | no |
| <a name="input_enable_testplans"></a> [enable\_testplans](#input\_enable\_testplans) | Enable test plans feature. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Azure DevOps project name. | `string` | n/a | yes |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | List or repositories for the project. | `list(string)` | `[]` | no |
| <a name="input_source_url"></a> [source\_url](#input\_source\_url) | Source repository URL. | `string` | `""` | no |
| <a name="input_version_control"></a> [version\_control](#input\_version\_control) | Specifies the version control system. Valid values: Git or Tfvc. Defaults to Git. | `string` | `"Git"` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Specifies the visibility of the Project. Valid values: private or public. Defaults to private. | `string` | `"private"` | no |
| <a name="input_work_item_template"></a> [work\_item\_template](#input\_work\_item\_template) | Specifies the work item template. Valid values: Agile, Basic, CMMI, Scrum or a custom, pre-existing one. Defaults to Agile. An empty string will use the parent organization default. | `string` | `"Agile"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project"></a> [project](#output\_project) | n/a |
| <a name="output_repositories"></a> [repositories](#output\_repositories) | n/a |
<!-- END_TF_DOCS -->