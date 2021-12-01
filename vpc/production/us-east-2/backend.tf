terraform {
  backend "s3" {
    bucket = "production-terraform-state-acme-us-east-2"
    key    = "vpc/tf.state"
    region = "us-east-2"
  }
}