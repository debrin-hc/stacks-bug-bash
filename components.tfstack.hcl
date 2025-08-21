component "aws" {
  source = "./aws"

  inputs = {
    aws_access_key = var.aws_access_key
    aws_secret_key = var.aws_secret_key
    aws_region     = var.aws_region
  }

  providers = {
    aws = provider.aws.this
  }
}
