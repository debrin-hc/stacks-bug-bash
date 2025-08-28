# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "aws" {
  name     = "aws_creds"
  category = "env"
}

store "varset" "tags" {
  name     = "vars_test"
  category = "terraform"
}

#store "varset" "regions" {
#  name     = "aws_creds"
#  category = "env"
#}

deployment "dev" {
  inputs = {
    regions       = [ store.varset.aws.stable.AWS_REGION ]
    access_key    = store.varset.aws.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.aws.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.aws.AWS_SESSION_TOKEN
    default_tags  = { stacks-preview-example = "lambda-component-expansion-stack" }

    stable_var    = store.varset.aws.stable.stable_var
#    ephemeral_var = store.varset.aws.ephemeral_var

    bucket_tags   = store.varset.tags.stable.bucket_tags
  }
}

#deployment "prod" {
#  inputs = {
#    regions       = store.varset.regions.stable.prod
#    access_key    = store.varset.aws.aws_access_key
#    secret_key    = store.varset.aws.aws_secret_key
#    session_token = store.varset.aws.aws_session_token
#    default_tags  = { stacks-preview-example = "lambda-component-expansion-stack" }
#  }
#}
