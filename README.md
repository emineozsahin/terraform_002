
# Generating Azure Resource Group, Storage Account and Virtual Machine via Terraform

```
#make a folder for the root module
mkdir terraform_002; cd terraform_002

#Generate root module files
touch provider.tf variables.tf README.md rg.tf sa.tf vnet.tf vm.tf output.tf
```

Find the resources from terraform official [website](https://www.terraform.io)

Below are the list of the links that I used to find the resources.

1. [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
2. [Terraform Azure Resource Group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)
3. [Terraform Azure Storage Account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account)
4. [Terraform Azure Virtual Network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network)
5. [Terraform Azure VM](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine)

```
# fix the indentation
terraform fmt

#
terraform init

# Check the IaC deployments
terraform plan

# Apply the the IaC deployments
terraform apply

# if you want to use a different file for variables
terraform apply --var-file="example_var.tfvar"

```

terraform init -migrate-state






