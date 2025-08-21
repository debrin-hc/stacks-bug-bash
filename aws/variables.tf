variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  ephemeral   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  ephemeral   = true
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}
