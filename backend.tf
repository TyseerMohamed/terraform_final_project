terraform {
  backend "s3" {
    bucket         = "tyseer-tf-bucket"
    key            = "terraform.tfstate"
    dynamodb_table = "state-Locks1"
    region         = "us-east-1"
  }
}
# LockID