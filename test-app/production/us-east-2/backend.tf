terraform {
  backend "s3" {
    bucket = "production-terraform-state-acme-us-east-2"
    key    = "test-app/tf.state"
    region = "us-east-2"
  }
}