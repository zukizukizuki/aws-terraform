# resource "aws_sns_topic" "terraform_test" {
#   name = "terraform-test"
# }

data "aws_s3_bucket" "zukkie_terraform_state" {
  bucket = "zukkie-terraform-state"
}

// resource "aws_sns_topic" "terraform_test2" {
#   name = "terraform-test2"
#   tags = data.aws_s3_bucket.zukkie_terraform_state
# }