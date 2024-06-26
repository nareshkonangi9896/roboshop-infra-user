module "allow_all_sg" {
    source = "../terraform-aws-securitygroup"
    project_name = var.project_name
    sg_name = var.sg_name
    sg_description = var.sg_description
    sg_ingress_rules = var.sg_ingress_rules
    vpc_id = local.vpc_id
    comman_tags = var.comman_tags

  
}