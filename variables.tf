variable "cidr_block" {
    default = "10.0.0.0/16"
}
variable "project_name" {
    default = "roboshop"
}
variable "comman_tags" {
    default = {
        Project = "roboshop"
        Environment = "Dev"
        Terraform = "true"
    }
}
variable "public_cidr_block" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]  
}
variable "private_cidr_block" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}
variable "database_cidr_block" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}
variable "sg_name" {
    default = "allow_all"
}
variable "sg_description" {
    default = "allowing all ports from internet"
}
variable "sg_ingress_rules" {
    default = [
        {
            description      = "allowing all inbound traffic from internet"
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = ["0.0.0.0/0"]
  }
    ]
}
variable "instance" {
    type = map
    default = {
        MongoDB = "t2.micro" #t3.medium
        MySQL = "t2.micro" #t3.medium
        Redis = "t2.micro"
        RabbitMQ = "t2.micro"
        Catalogue = "t2.micro"
        User = "t2.micro"
        Cart = "t2.micro"
        Shipping = "t2.micro"
        Payment = "t2.micro"
        Dispatch = "t2.micro"
        Web = "t2.micro"
    }
}
variable "zone_name" {
    type = string
    default = "nareshdevops.online"
}