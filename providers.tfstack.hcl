required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "~> 5.0"
  }
}

provider "aws" "this" {
  for_each = var.regions

  config {
    region = each.value
    access_key = var.access_key
    secret_key = var.secret_key
  }
}
