terraform {
  backend "s3" {
    bucket         = "terraform-states-for-aca"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
    key            = "projects/main-terraform-states.tfstate"
    region         = "us-east-1"
  }
}