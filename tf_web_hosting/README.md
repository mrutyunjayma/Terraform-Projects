# Terraform Static Website Hosting

This project demonstrates hosting a **static website** on **AWS S3** using **Terraform**.

---

## 📝 Features

- Create an S3 bucket for website hosting
- Upload `index.html` and `error.html` files
- Configure S3 bucket as a website
- Set public access permissions with S3 bucket policy

---

## 📂 Files in this project
```
tf_web_hosting/
├── backend.tf # Remote backend configuration (optional)
├── provider.tf # AWS provider setup
├── resource.tf # Terraform resources (S3 bucket, objects, policy)
├── variables.tf # Variables for bucket name, region, etc.
├── index.html # Static website homepage
├── error.html # Custom error page
├── terraform.tf # Main Terraform configuration
├── .gitignore # Ignored files (state, cache)

```
---

## 🛠 Prerequisites

- Terraform installed ([download](https://developer.hashicorp.com/terraform/downloads))
- AWS account with IAM user credentials
- AWS CLI configured (`aws configure`)

---

## 🚀 Usage

1. Initialize Terraform:
```
terraform init
```
Plan the infrastructure:
```
terraform plan
```
Apply the infrastructure:

```
terraform apply
```
Access the website via the S3 endpoint provided in outputs.

Destroy the infrastructure when done:
```
terraform destroy
```
📌 Notes
.terraform/ and .tfstate files are ignored in Git.

Make sure S3 bucket names are globally unique.
