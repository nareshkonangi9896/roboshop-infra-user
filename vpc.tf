module "vpc" {
    source = "git::https://github.com/nareshkonangi9896/terraform-aws-vpc-advanced.git"
    cidr_block = var.cidr_block
    project_name = var.project_name
    comman_tags = var.comman_tags
    public_subnet_cidr = var.public_cidr_block
    private_subnet_cidr = var.private_cidr_block
    database_subnet_cidr = var.database_cidr_block
}