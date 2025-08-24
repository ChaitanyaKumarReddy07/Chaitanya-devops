terraform {
  backend "s3" {
    bucket         = "dev-chaitanya-tf-bucket"   # Correct bucket name
    key            = "eks/terraform.tfstate"
    region         = "ap-southeast-2"            # Correct region
    dynamodb_table = "chaitanya-tf-lock"         # Make sure this exists
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
