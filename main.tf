resource "gitlab_project_milestone" "project_milestones" {
  for_each = var.project_milestones

  project     = each.value.project
  title       = each.value.title
  description = each.value.description
  due_date    = each.value.due_date
  start_date  = each.value.start_date
  state       = each.value.state
}

