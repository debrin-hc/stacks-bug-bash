# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "aws" {
  name     = "aws_creds"
  category = "env"
}

#store "varset" "regions" {
#  name     = "aws_creds"
#  category = "env"
#}

deployment "dev" {
  inputs = {
    regions       = [ store.varset.aws.stable.aws_region ]
    access_key    = store.varset.aws.aws_access_key
    secret_key    = store.varset.aws.aws_secret_key
    session_token = store.varset.aws.aws_session_token
    default_tags  = { stacks-preview-example = "lambda-component-expansion-stack" }

    stable_var    = store.varset.aws.stable.stable_var
#    ephemeral_var = store.varset.aws.ephemeral_var
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
