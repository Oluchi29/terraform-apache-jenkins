terraform {
  backend "s3" {
    bucket = "terraform-oluchi-100"
    key    = "project/terraform.tfstate"
    region = "us-east-1"
  }
}

