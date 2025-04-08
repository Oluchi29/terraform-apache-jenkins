terraform {
  backend "s3" {
    bucket = "lulu-1985-bucket"
    region = "us-east-1"
    key    = "backend-1/terraform.tfstate"
  }
}