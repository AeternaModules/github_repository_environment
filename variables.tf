variable "repository_environments" {
  description = <<EOT
Map of repository_environments, attributes below
Required:
    - environment
    - repository
Optional:
    - can_admins_bypass
    - prevent_self_review
    - wait_timer
    - deployment_branch_policy (block):
        - custom_branch_policies (required)
        - protected_branches (required)
    - reviewers (block):
        - teams (optional)
        - users (optional)
EOT

  type = map(object({
    environment         = string
    repository          = string
    can_admins_bypass   = optional(bool)
    prevent_self_review = optional(bool)
    wait_timer          = optional(number)
    deployment_branch_policy = optional(object({
      custom_branch_policies = bool
      protected_branches     = bool
    }))
    reviewers = optional(object({
      teams = optional(set(number))
      users = optional(set(number))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.repository_environments : (
        v.wait_timer == null || (v.wait_timer >= 0 && v.wait_timer <= 43200)
      )
    ])
    error_message = "must be between 0 and 43200"
  }
}

