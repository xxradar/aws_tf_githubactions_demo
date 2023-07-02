provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-remote-state-${var.environment}-${var.studentid}"
  force_destroy = true
  tags = { 
    Name = "${var.prefix}-remote-state-${var.environment}-${var.studentid}" 
    Environment = "${var.environment}"
  } 
}

resource "aws_s3_bucket_versioning" "remote_state_version" {
  bucket = aws_s3_bucket.remote_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

