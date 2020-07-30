#name     = "columbia-dev"
vpc-cidr = "10.9.128.0/17"
vpc-azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
  "us-east-1d",
  "us-east-1e",
  "us-east-1f",
]
public_subnets = [
  "10.9.128.0/25",
  "10.9.129.0/25",
  "10.9.130.0/25",
  "10.9.131.0/25",
  "10.9.132.0/25",
  "10.9.133.0/25"
]
public_subnet_tags = {
  "Tier" = "ec2-public"
}
public_subnet_suffix = "ec2-public"

private_subnets = [
  "10.9.128.128/25",
  "10.9.129.128/25",
  "10.9.130.128/25",
  "10.9.131.128/25",
  "10.9.132.128/25",
  "10.9.133.128/25"
]
private_subnet_tags = {
  "Tier" = "ec2-private"
}
private_subnet_suffix = "ec2-private"



#vpc_tags = {
#  Name = "invex-dev"
#}

database_subnets = [
  "10.9.134.128/25",
  "10.9.135.128/25",
  "10.9.136.128/25",
  "10.9.137.128/25",
  "10.9.138.128/25",
  "10.9.139.128/25"
]

#database_subnet_tags = {
#  "Tier" = "rds-private"
#}

database_subnet_suffix = "rds-private"

#project     = "invex"
#environment = "dev"