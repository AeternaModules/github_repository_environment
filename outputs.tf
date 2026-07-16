output "repository_environments_id" {
  description = "Map of id values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_environments_can_admins_bypass" {
  description = "Map of can_admins_bypass values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.can_admins_bypass if v.can_admins_bypass != null }
}
output "repository_environments_deployment_branch_policy" {
  description = "Map of deployment_branch_policy values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.deployment_branch_policy if v.deployment_branch_policy != null && length(v.deployment_branch_policy) > 0 }
}
output "repository_environments_environment" {
  description = "Map of environment values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "repository_environments_prevent_self_review" {
  description = "Map of prevent_self_review values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.prevent_self_review if v.prevent_self_review != null }
}
output "repository_environments_repository" {
  description = "Map of repository values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "repository_environments_repository_id" {
  description = "Map of repository_id values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.repository_id if v.repository_id != null }
}
output "repository_environments_reviewers" {
  description = "Map of reviewers values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.reviewers if v.reviewers != null && length(v.reviewers) > 0 }
}
output "repository_environments_wait_timer" {
  description = "Map of wait_timer values across all repository_environments, keyed the same as var.repository_environments"
  value       = { for k, v in github_repository_environment.repository_environments : k => v.wait_timer if v.wait_timer != null }
}

