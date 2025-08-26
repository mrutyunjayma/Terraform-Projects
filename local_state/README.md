# Terraform Project with Local State

This project demonstrates **Terraform using local state files**.

---

## 📝 Features

- Basic Terraform setup with local state
- Resource creation using AWS provider
- Output variables to display resource information

---

## 📂 Files in this project

local_state/
├── main.tf # Main Terraform resources
├── variables.tf # Variables
├── outputs.tf # Output definitions
├── terraform.tf # Terraform configuration
├── .gitignore # Ignored files

---

## 🚀 Usage

1. Initialize Terraform:
```
terraform init
```
Plan:
```
terraform plan
```
Apply:
```
terraform apply
```
State is stored locally in terraform.tfstate.

Destroy resources:
```
terraform destroy
```
📌 Notes
This setup is ideal for learning and testing, not for production or team collaboration.
