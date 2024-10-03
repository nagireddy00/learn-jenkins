# creating vpc 
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkins-vpc"
  cidr = var.vpc_cidr_block

  azs             = data.aws_availability_zones.azs.names
  #private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = var.public_subnet_cidr_blocks
  
  tags = {
    Name = "jenkins-vpc"
    Terraform = "true"
    Environment = "dev"
  }
  public_subnet_tags = {
    Name = "jenkins-subnet"
  }
}
# creating security group

# creating EC2 
