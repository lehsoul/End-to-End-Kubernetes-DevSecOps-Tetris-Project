terraform {
  backend "s3" {
    bucket       = "ramyasree-devops-tf-state"
    region       = "ap-south-1"
    key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }

  required_version = ">=1.13.3"

  required_providers {
    aws = {
      version = ">= 6.23.0"
      source  = "hashicorp/aws"
    }
  }
}
