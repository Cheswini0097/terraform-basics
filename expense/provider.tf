terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}