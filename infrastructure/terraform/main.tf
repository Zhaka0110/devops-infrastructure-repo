

terraform {
  required_version = ">= 1.5.0"
}

locals {
  name = "${var.project_name}-${var.environment}"
}
resource "local_file" "project_info" {
  filename = "${path.module}/project.txt"
  content  = "Project: ${local.name}\n"
}
output "name" {
  value = local.name
}
