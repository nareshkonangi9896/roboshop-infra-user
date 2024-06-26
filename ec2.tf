module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  for_each = var.instance
  ami = data.aws_ami.devops_ami.id
  instance_type          = each.value
  vpc_security_group_ids = [local.allow_all_securitygroup_id]
  subnet_id              = each.key == "Web" ? local.public_subnet[0] : local.private_subnet[0]
  tags = merge(
                var.comman_tags,
                {
                Name = each.key
                }
            )
}
module "ec2_ansible" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.devops_ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [local.allow_all_securitygroup_id]
  subnet_id = local.public_subnet[0] # public subnet in 1a az
  user_data = file("roboshop-ansible.sh")
  tags = merge(
    {
        Name = "Ansible"
    },
    var.comman_tags
  )
}