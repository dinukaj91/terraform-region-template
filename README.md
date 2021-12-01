# A Terraform Template For Handling Multiple Regions and Environments

In order for you to make this configuration work you will have to create the following buckets in the two different regions:

  staging-terraform-state-acme-us-west-2

  production-terraform-state-acme-us-west-2

  production-terraform-state-acme-us-east-2

You can add more environments and more regions as needed.

To get a clear picture as to how the folders are structured run a tree command on the base directory
