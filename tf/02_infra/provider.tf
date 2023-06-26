provider "aws" {
  region = var.region
}

variable "access_key" {}
variable "secret_key" {}

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
