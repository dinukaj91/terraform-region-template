terraform {
  backend "s3" {
    bucket = "production-terraform-state-acme-us-west-2"
    key    = "vpc/tf.state"
    region = "us-west-2"
  }
}