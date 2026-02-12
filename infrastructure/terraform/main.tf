

terraform {
  required_version = ">= 1.5.0"
}

locals {
  name = "${var.project_name}-${var.environment}"
}
resource "local_file" "project_info" {
  filename             = "${path.module}/project.txt"
  content              = "Project: ${local.name}\n"
  file_permission      = "0644"
  directory_permission = "0755"
}
output "name" {
  value = local.name
}
