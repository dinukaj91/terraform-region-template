# A Terraform Template For Handling Multiple Regions and Environments

In order for you to make this configuration work you will have to create the following buckets in the two different regions:

staging-terraform-state-acme-us-west-2

production-terraform-state-acme-us-west-2

production-terraform-state-acme-us-east-2

The Terraform folder structure for this is given below.

You can add more environments and more regions as needed.


├── README.md
├── test-app
│   ├── main.tf
│   ├── production
│   │   ├── us-east-2
│   │   │   ├── backend.tf
│   │   │   ├── main.tf -> ../../main.tf
│   │   │   ├── us-east-2-production.tfvars
│   │   │   └── variables.tf -> ../../variables.tf
│   │   └── us-west-2
│   │       ├── backend.tf
│   │       ├── main.tf -> ../../main.tf
│   │       ├── us-west-2-production.tfvars
│   │       └── variables.tf -> ../../variables.tf
│   ├── staging
│   │   └── us-west-2
│   │       ├── backend.tf
│   │       ├── main.tf -> ../../main.tf
│   │       ├── us-west-2-staging.tfvars
│   │       └── variables.tf -> ../../variables.tf
│   └── variables.tf
└── vpc
    ├── main.tf
    ├── production
    │   ├── us-east-2
    │   │   ├── backend.tf
    │   │   ├── main.tf -> ../../main.tf
    │   │   ├── us-east-2-production.tfvars
    │   │   └── variables.tf -> ../../variables.tf
    │   └── us-west-2
    │       ├── backend.tf
    │       ├── main.tf -> ../../main.tf
    │       ├── us-west-2-production.tfvars
    │       └── variables.tf -> ../../variables.tf
    ├── staging
    │   └── us-west-2
    │       ├── backend.tf
    │       ├── main.tf -> ../../main.tf
    │       ├── us-west-2-staging.tfvars
    │       └── variables.tf -> ../../variables.tf
    └── variables.tf