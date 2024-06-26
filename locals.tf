locals {
    vpc_id = module.vpc.vpc_id-output
    public_subnet = module.vpc.public_subnet_ids
    private_subnet = module.vpc.private_subnet_ids
    database_subnet = module.vpc.database_subnet_ids
    allow_all_securitygroup_id = module.allow_all_sg.security_group_id
    ips = module.ec2_instance
}