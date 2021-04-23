variable "region" {
  default = "eu-north-1"
}

variable "amis" {
  type = map
  default = {
    "eu-north-1" = "ami-1dab2163"
    "us-east-1"  = "ami-b374d5a5"
    "us-west-1"  = "ami-4b32be2b"
  }
}