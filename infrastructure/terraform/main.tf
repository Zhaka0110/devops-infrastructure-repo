terraform {
  required_version = ">= 1.5.0"
}

locals {
  name = "${var.project_name}-${var.environment}"
}

output "name" {
  value = local.name
}
