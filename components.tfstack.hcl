component "aws" {
  source = "./aws"

  providers = {
    aws = provider.aws.this
  }
}
