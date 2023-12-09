provider "aws" {}
data "aws_caller_identity" "current" {}

locals {
  name        = ""
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
      budget_limit = ""
    },

    S3 = {
      budget_limit = ""
    },

    KMS = {
      budget_limit = ""
    },

    CloudWatch = {
      budget_limit = ""
    },

    DynamoDB = {
      budget_limit = ""
    },

    Route53 = {
      budget_limit = ""
    },

    EC2Other = {
      budget_limit = ""
    },

    Config = {
      budget_limit = ""
    }
    ## Add AWS Services here
  }
}
