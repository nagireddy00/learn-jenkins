variable "vpc_cidr_block"{
    description = "vpc cidr"
    type = string
}
variable "instance_type" {
    description = "Instance Type"
    type = string
}
variable "public_subnet_count" {
  description = "Number of public subnets."
  type        = number
  default     = 1
}


variable "public_subnet_cidr_blocks" {
  description = "Available cidr blocks for public subnets."
  type        = list(string)
}

variable "aws_ami" {
  description = "ubuntu ami version"
  type = string
}