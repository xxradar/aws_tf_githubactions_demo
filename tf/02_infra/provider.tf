provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }


  backend "s3" {
    region = "eu-west-3"
    bucket = "xpertsummit-remote-state-development"
    key    = "terraform.tfstate"
  }
}
