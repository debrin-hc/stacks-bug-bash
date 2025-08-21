deployment "dev" {
  inputs = {
    aws_access_key = store.varset.vars_block.aws_access_key
    aws_secret_key = store.varset.vars_block.aws_secret_key
    aws_region = store.varset.vars_block.stable.aws_region
  }
}

store "varset" "vars_block" {
  # id = "varset-brfhCsSS6m5axw3E"
  name = "aws_creds"
  category = "env"
}

