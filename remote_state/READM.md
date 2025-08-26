This project demonstrates **Terraform using a remote backend** (AWS S3 + DynamoDB).

---

## 📝 Features

- Store Terraform state in a remote S3 bucket
- Enable state locking using DynamoDB to avoid conflicts
- Output variables to show resource details

---

## 📂 Files in this project
```
remote_state/
├── backend.tf # Remote backend configuration (S3 + DynamoDB)
├── main.tf # Terraform resources
├── variables.tf # Variables
├── outputs.tf # Output definitions
├── terraform.tf # Terraform configuration
├── .gitignore # Ignored files
```

---

## 🛠 Prerequisites

- AWS account with IAM user credentials
- AWS CLI configured
- Terraform installed

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
Terraform state is stored in the S3 bucket and locked using DynamoDB.

Destroy resources when done:
```
terraform destroy
```
📌 Notes
Remote backend is suitable for team collaboration.

Make sure your S3 bucket and DynamoDB table names are unique.
