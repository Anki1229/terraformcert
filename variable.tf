variable "instance_type" {
  type = map(any)
  default = {
    "dev"  = "t2.small",
    "test" = "t2.medium",
    "prod" = "t2.large"
  }
}

variable "image" {
  type    = list(any)
  default = ["ami-000", "ami-111", "ami-222"]
}

variable "input" {}