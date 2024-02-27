# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

// it is best practice to create new file for each resource

# terraform {
#   backend "s3" {
#     bucket         = "terraform-new-statee-0402"
#     key            = "path/s3statefile/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-dynamodb"
#   }
# }
