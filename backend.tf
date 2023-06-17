terraform {
    required_version = "1.4.6"
  backend "s3" {
    bucket = "zukkie-terraform-state"
    key    = "terraform.state"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
