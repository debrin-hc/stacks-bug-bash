required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "6.9.0"
  }
  
  random = {
    source  = "hashicorp/random"
    version = "~> 3.7.2"
  }
}

provider "random" "this" {}
#provider "aws" "this" {
  #config {
    #region     = var.aws_region
    #access_key = var.aws_access_key
    #secret_key = var.aws_secret_key
  #}
#}
