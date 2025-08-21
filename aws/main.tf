resource "aws_s3_bucket" "example" {
  bucket = "stacks-varset-bug-bash--debrin"

  tags = {
    Name        = "Stacks Varset"
    Environment = "Bug Bash"
  }
}
