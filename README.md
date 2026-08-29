# 🏗️ Azure Landing Zone with Terraform

![Azure](https://img.shields.io/badge/Microsoft%20Azure-0078D4?style=for-the-badge\&logo=microsoftazure\&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-844FBA?style=for-the-badge\&logo=terraform\&logoColor=white)
![Azure DevOps](https://img.shields.io/badge/Azure%20DevOps-0078D7?style=for-the-badge\&logo=azuredevops\&logoColor=white)

## 📌 Overview

This project demonstrates the provisioning of **Azure cloud infrastructure using Terraform** with a modular Infrastructure as Code (IaC) approach.

The project uses reusable Terraform modules to provision core Azure networking and compute resources, with environment-specific configuration for deployment.

## 🏗️ Architecture

```text
                    Azure Infrastructure
                           │
                    Environment: Prod
                           │
              ┌────────────┼────────────┐
              │            │            │
             VNet        Public IP    Resource Group
              │
           Subnets
              │
             VMs
```

## 🚀 Azure Resources

The project provisions the following Azure resources using Terraform modules:

* Azure Resource Group
* Azure Virtual Network (VNet)
* Azure Subnet
* Azure Public IP
* Azure Virtual Machines

## 🧩 Terraform Modules

The infrastructure is organized into reusable Terraform modules:

```text
modules/
├── azurerm_public_ip
├── azurerm_resource_group
├── azurerm_subnet
├── azurerm_vms
└── azurerm_vnet
```

This modular approach helps improve:

* Reusability
* Maintainability
* Consistency
* Scalability

## 🌍 Environment Structure

Currently, the project contains a production environment:

```text
environment/
└── prod/
    ├── main.tf
    ├── provider.tf
    ├── terraform.tfvars
    └── variable.tf
```

Environment-specific values are managed through Terraform variables and `terraform.tfvars`.

## 🔄 CI/CD Pipeline

The project includes Azure DevOps YAML pipelines for Terraform automation.

```text
Developer
    │
    ▼
 Git Push
    │
    ▼
 Azure DevOps Pipeline
    │
    ├── Terraform Init
    ├── Terraform Validate
    ├── Terraform Plan
    │
    ▼
 Approval
    │
    ▼
 Terraform Apply
    │
    ▼
 Azure Infrastructure
```

### Pipeline Files

* `azure-pipelines.yml` – Terraform CI / validation and plan workflow
* `azure-pipelines-cd.yml` – Terraform deployment workflow

## 📁 Project Structure

```text
terraform-monolithic-lz/
│
├── environment/
│   └── prod/
│       ├── main.tf
│       ├── provider.tf
│       ├── terraform.tfvars
│       └── variable.tf
│
├── modules/
│   ├── azurerm_public_ip/
│   ├── azurerm_resource_group/
│   ├── azurerm_subnet/
│   ├── azurerm_vms/
│   └── azurerm_vnet/
│
├── azure-pipelines.yml
├── azure-pipelines-cd.yml
├── .gitignore
├── LICENSE
└── README.md
```

## 🛠️ Technologies

| Category               | Technology                   |
| ---------------------- | ---------------------------- |
| Cloud                  | Microsoft Azure              |
| Infrastructure as Code | Terraform                    |
| CI/CD                  | Azure DevOps Pipelines       |
| Version Control        | Git                          |
| Configuration          | Terraform Variables / tfvars |
| Automation             | YAML                         |

## 🎯 Key Highlights

* Modular Terraform architecture
* Reusable infrastructure modules
* Environment-based Terraform configuration
* Azure networking and compute provisioning
* Terraform CI/CD automation using Azure DevOps
* Infrastructure managed as Code
* Separate CI and CD pipeline workflows

## 🚀 Terraform Workflow

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Create an execution plan:

```bash
terraform plan
```

Apply the infrastructure:

```bash
terraform apply
```

## 👨‍💻 Author

**Shripal Singh**

DevOps Engineer | Azure | Terraform | CI/CD | Docker | Kubernetes | DevSecOps

🔗 [LinkedIn](https://www.linkedin.com/in/shripal-singh-devops/)
