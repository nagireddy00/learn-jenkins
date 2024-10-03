terraform {
  backend "s3" {
    bucket = "eks-cluster-121"
    key = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}