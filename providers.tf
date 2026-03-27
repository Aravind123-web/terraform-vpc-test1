terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket = "aravind-remote-state-555"
    key   = "expense2-vpc"
    region = "us-east-1"
    #dynamodb_table = "daws-76s-locking"
    use_lockfile = true
  }
}
# provider authentication here
provider "aws" {
  region = "us-east-1"
}