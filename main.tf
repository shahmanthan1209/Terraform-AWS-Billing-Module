provider "aws" {}
data "aws_caller_identity" "current" {}

locals {
  name        = "" # project/AWS account name
  project     = "billing"
}

module "billing_alarm" {
  source = "../Modules/Billing/"
  providers = {
    aws = "aws"
  }
  name                 = "${local.name}"
  account_budget_limit = "" # monthly limit for AWS account

  services = {
    EC2 = {
      budget_limit = "" # monthly limit for AWS Service
    },

    S3 = {
      budget_limit = "" # monthly limit for AWS Service
    },

    KMS = {
      budget_limit = "" # monthly limit for AWS Service
    },

    CloudWatch = {
      budget_limit = "" # monthly limit for AWS Service
    },

    DynamoDB = {
      budget_limit = "" # monthly limit for AWS Service
    },

    Route53 = {
      budget_limit = "" # monthly limit for AWS Service
    },

    EC2Other = {
      budget_limit = "" # monthly limit for AWS Service
    },

    Config = {
      budget_limit = "" # monthly limit for AWS Service
    }
    ## Add AWS Services here
  }
}
