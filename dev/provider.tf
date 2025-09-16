terraform {
  backend "s3" {
    bucket       = "vntechsol"
    region       = "eu-west-2"
    use_lockfile = true
    encrypt      = true
    key          = "dev/eks/terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.13.0"
    }
  }

  required_version = ">= 1.12.2"

}

provider "aws" {
  region = "eu-west-2"
  # profile = "dev_aws"
}