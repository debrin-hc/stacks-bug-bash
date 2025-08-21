#component "aws" {
#  source = "./aws"
#
#  inputs = {
#    aws_access_key = var.aws_access_key
#    aws_secret_key = var.aws_secret_key
#    aws_region     = var.aws_region
#  }
#
#  providers = {
#    aws = provider.aws.this
#  }
#}

component "random" {
  source = "./random"
  
  inputs = {
    stable_var    = var.stable_var
    ephemeral_var = var.ephemeral_var
  }

  providers = {
    random = provider.random.this
  }
}

