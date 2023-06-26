provider "aws" {
  region = var.region
}


# Define the remote state s3 bucket
terraform {
  backend "s3" {
    region = "eu-west-3"
    bucket = "xpertsummit-remote-state-development"
    key    = "terraform.tfstate"
  }
}
