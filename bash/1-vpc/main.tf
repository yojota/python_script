module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "${var.project}-${var.environment}"
  cidr   = var.vpc-cidr
  #tags = {
  # Name = "${var.project}-${var.environment}"
  #}
  vpc_tags           = var.vpc_tags
  azs                = var.vpc-azs
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  enable_nat_gateway = false
  //  single_nat_gateway = true
  database_subnets = var.database_subnets

  #taggin
  private_subnet_tags    = var.private_subnet_tags
  private_subnet_suffix  = var.private_subnet_suffix
  public_subnet_tags     = var.public_subnet_tags
  public_subnet_suffix   = var.public_subnet_suffix
  #database_subnet_tags   = var.database_subnet_tags
  database_subnet_suffix = var.database_subnet_suffix

  #aditionaltag
  #linea 330 modulo oficial
  #merge tag
  #tags = merge(
  #var.private_subnet_suffix,
  #        var.vpc_tags,
  #        var.private_subnet_tags
  #        )
}


