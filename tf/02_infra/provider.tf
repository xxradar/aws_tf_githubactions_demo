provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      Version = "~>3.27"
    }
  }

  required_version = ">=0.14.9"

  backend "s3" {
    region = "eu-west-3"
    bucket = "xpertsummit-remote-state-development"
    key    = "terraform.tfstate"
  }
}
