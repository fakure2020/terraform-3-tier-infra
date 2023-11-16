terraform {
  backend "s3" {
    bucket               = "fakure1012-02-01a"
    key                  = "state/terraform.tfstate"
    region               = "us-east-1"
    workspace_key_prefix = "env"
  }
}