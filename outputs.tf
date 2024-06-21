# output "vpc_id" {
#   value = module.vpc.vpc_id-output
# }

# output "az" {
#     value = module.vpc.az-output
# }

# output "az1" {
#     value = module.vpc.az1-output
# }
output "public_subnets" {
     value = module.vpc.public_subnet_ids
}
output "private_subnets" {
     value = module.vpc.private_subnet_ids
}
output "database_subnets" {
     value = module.vpc.database_subnet_ids
}