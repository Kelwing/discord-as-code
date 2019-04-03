terraform {
  backend "s3" {
    bucket = "discord-as-code-terraform"
    key = "discord-as-code.tfstate"
    region = "us-east-1"
  }
}