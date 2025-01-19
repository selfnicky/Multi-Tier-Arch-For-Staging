terraform {
  backend "s3" {
    bucket         = "selfterraform" # your bucket name
    key            = "demo/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-statefile-lock" # your dynamoDB table name
  }
}