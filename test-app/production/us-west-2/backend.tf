terraform {
  backend "s3" {
    bucket = "production-terraform-state-acme-us-west-2"
    key    = "test-app/tf.state"
    region = "us-west-2"
  }
}