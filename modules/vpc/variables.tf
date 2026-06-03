variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "CIDRs for public subnets"
}

variable "private_subnets" {
  type        = list(string)
  description = "CIDRs for private subnets"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"

  validation {
    condition     = length(var.azs) >= 3
    error_message = "Minimum 3 AZs required for HA."
  }
}

variable "project_name" {
  type        = string
  description = "Project name"
}

variable "environment" {
  type        = string
  description = "Environment (dev/stage/prod)"
}
``