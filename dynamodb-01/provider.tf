
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.16.1"
    }
  }
}

provider "aws" {
  access_key=var.aws_access_key
  secret_key=var.aws_secret_key
  region = "ap-southeast-1"
}
