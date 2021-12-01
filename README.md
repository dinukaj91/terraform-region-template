# A Terraform Template For Handling Multiple Regions and Environments

The Terraform folder structure 

A Terraform template used to manage different environments in multiple regions



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