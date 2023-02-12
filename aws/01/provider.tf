terraform {
  experiments = [module_variable_optional_attrs]
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "east2"
  region = "us-east-2"
}
