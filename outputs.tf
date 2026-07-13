output "repository_environments_id" {
  description = "Map of id values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.id }
}
output "repository_environments_can_admins_bypass" {
  description = "Map of can_admins_bypass values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.can_admins_bypass }
}
output "repository_environments_deployment_branch_policy" {
  description = "Map of deployment_branch_policy values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.deployment_branch_policy }
}
output "repository_environments_environment" {
  description = "Map of environment values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.environment }
}
output "repository_environments_prevent_self_review" {
  description = "Map of prevent_self_review values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.prevent_self_review }
}
output "repository_environments_repository" {
  description = "Map of repository values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.repository }
}
output "repository_environments_repository_id" {
  description = "Map of repository_id values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.repository_id }
}
output "repository_environments_reviewers" {
  description = "Map of reviewers values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.reviewers }
}
output "repository_environments_wait_timer" {
  description = "Map of wait_timer values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.wait_timer }
}

