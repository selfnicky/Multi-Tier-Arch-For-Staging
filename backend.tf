terraform {
  backend "s3" {
    bucket         = "" # your bucket name
    key            = "demo/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "" # your dynamoDB table name
  }
}