terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner = "mzincamo"
    }
  }
}

variable "region" {
  description = "aws-region"
  default     = "us-east-1"
}