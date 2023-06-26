provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}


# Define the remote state s3 bucket
terraform {
  backend "s3" {
    region = "eu-west-3"
    bucket = "xpertsummit-remote-state-development"
    key    = "terraform.tfstate"
  }
}