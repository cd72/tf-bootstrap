locals {
  tags = {
    Environment = "Test"
    Name = "Test001"
  }
}

variable "region" {
    type = string
    description = "Which region to create in"
}

variable "tags" {
    type = map(string)
    description = "Tags to be attached"
}