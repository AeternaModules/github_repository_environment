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
  # --- Unconfirmed validation candidates, derived from github_repository_environment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: wait_timer
  #   condition: value >= 0 && value <= 43200
  #   message:   must be between 0 and 43200
}

