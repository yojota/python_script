#variable name {}
variable vpc-cidr {}
variable vpc-azs {
  description = "azs in us-east-1"
  type        = list
  default     = ["us-east-1a"]
}
variable private_subnets {
  type = list
}
variable public_subnets {
  type = list
}
variable private_subnet_tags {
  type = map
}
variable public_subnet_tags {
  type = map
}
variable vpc_tags {
  type = map
}
variable database_subnets {
  type = list
}
#variable database_subnet_tags {
#  type = map
#}
variable "project" {
}
variable "environment" {
}
variable "private_subnet_suffix" {
  default = ""
}
variable "public_subnet_suffix" {
  default = ""
}
variable "database_subnet_suffix" {
  default = ""
}