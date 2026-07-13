resource "github_repository_environment" "repository_environments" {
  for_each = var.repository_environments

  environment         = each.value.environment
  repository          = each.value.repository
  can_admins_bypass   = each.value.can_admins_bypass
  prevent_self_review = each.value.prevent_self_review
  wait_timer          = each.value.wait_timer

  dynamic "deployment_branch_policy" {
    for_each = each.value.deployment_branch_policy != null ? [each.value.deployment_branch_policy] : []
    content {
      custom_branch_policies = deployment_branch_policy.value.custom_branch_policies
      protected_branches     = deployment_branch_policy.value.protected_branches
    }
  }

  dynamic "reviewers" {
    for_each = each.value.reviewers != null ? [each.value.reviewers] : []
    content {
      teams = reviewers.value.teams
      users = reviewers.value.users
    }
  }
}

