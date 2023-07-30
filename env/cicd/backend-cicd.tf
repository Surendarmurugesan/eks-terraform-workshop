# terraform {
#   required_version = ">= 1.4.0"
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       #  Allow any 3.1x version of the AWS provider
#       version = "~> 3.22"
#     }
#   }
#   # backend "s3" {
#   #   bucket         = "tf-state-workshop-88e654a76c7e071b"
#   #   key            = "terraform/terraform_locks_cicd.tfstate"
#   #   region         = "eu-north-1"
#   #   dynamodb_table = "terraform_locks_cicd"
#   #   encrypt        = "true"
#   # }
# }