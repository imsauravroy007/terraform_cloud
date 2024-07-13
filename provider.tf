terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "epam21212"

    workspaces {
      name = "demo-tomcat-install"
    }
  }
}

provider "aws" {

  region = "us-east-2"
}

resource "random_id" "this" {
  byte_length = 4
}

output "random_id" {
  value = random_id.this.hex
}