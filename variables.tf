variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
    description = "CIDR block for vpc"
    type = string
}

variable "subnet_cidr_block" {
    default = "10.0.10.0/24"
    description = "CIDR block for subnet"
    type = string
}