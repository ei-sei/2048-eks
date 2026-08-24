# Remote state, provisioned once via terraform/bootstrap (separate root, local state).
# use_lockfile enables S3-native state locking (Terraform >= 1.10) - no DynamoDB table needed.
terraform {
  backend "s3" {
    bucket = "2048-eks-tfstate-240826"
    key    = "2048-eks/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
