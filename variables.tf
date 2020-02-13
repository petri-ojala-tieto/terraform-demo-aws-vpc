variable "vpc_cidr" {
  default = "10.10.0.0/16"
}

variable "vpc_name" {
  default = "Terraform VPC"
}

variable "vpc_subnet_cidr" {
  default = "10.10.10.0/24"
}

variable "vpc_subnet_name" {
  default = "Terraform Subnet"
}

variable "vpc_subnet_az" {
  default = "eu-central-1a"
}
