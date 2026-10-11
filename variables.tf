variable "project_milestones" {
  description = <<EOT
Map of project_milestones, attributes below
Required:
    - project
    - title
Optional:
    - description
    - due_date
    - start_date
    - state
EOT

  type = map(object({
    project     = string
    title       = string
    description = optional(string)
    due_date    = optional(string)
    start_date  = optional(string)
    state       = optional(string)
  }))
}

