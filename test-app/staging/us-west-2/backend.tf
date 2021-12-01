terraform {
  backend "s3" {
    bucket = "staging-terraform-state-acme-us-west-2"
    key    = "test-app/tf.state"
    region = "us-west-2"
  }
}