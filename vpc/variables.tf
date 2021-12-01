variable "name" {
  default     = "ACME-Ltd"
  description = "The name of your stack/company"
}

variable "environment" {
  description = "The name of your environment"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}

variable "aws_region" {
  description = "The name of your region"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets"
}