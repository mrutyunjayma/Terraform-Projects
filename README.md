# Terraform Projects

This repository contains multiple **Terraform projects** organized into separate folders.  
Each project demonstrates different use cases of Infrastructure as Code (IaC) using Terraform.

---

## 📂 Project Structure
```
terraform-project/
│── tf_web_hosting/ # Static website hosting project using AWS S3
│── local_state/ # Example project using local Terraform state
│── remote_state/ # Example project using remote Terraform state (e.g., S3 backend)
│── .gitignore # Ignore Terraform cache, state files, etc.
│── README.md # Project documentation (this file)
```

```.
├── .gitignore
├── local_state
│   ├── main.tf
│   ├── outputs.tf
│   ├── terraform.tf
│   └── variables.tf
├── README.md
├── remote_state
│   ├── backend.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── terraform.tf
│   └── variables.tf
└── tf_web_hosting
    ├── backend.tf
    ├── error.html
    ├── .gitignore
    ├── index.html
    ├── provider.tf
    ├── resource.tf
    ├── .terraform.lock.hcl
    ├── terraform.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    └── variables.tf

```

---

## 🚀 Projects Overview

### 1. **tf_web_hosting/**
- Demonstrates hosting a **static website** using:
  - **Amazon S3** (website hosting enabled)
  - **Terraform** for provisioning
- Shows how to:
  - Create and configure an S3 bucket
  - Upload static website files
  - Manage permissions and policies

### 2. **local_state/**
- Simple Terraform setup using **local state**.
- Useful for learning basics of `terraform init`, `plan`, and `apply`.

### 3. **remote_state/**
- Demonstrates using a **remote backend** (e.g., AWS S3 + DynamoDB) to store state.
- Suitable for **team collaboration**.

---

## 🛠️ Prerequisites

Before running these projects, ensure you have:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed  
- An [AWS Account](https://aws.amazon.com/) with programmatic access  
- AWS CLI configured (`aws configure`) with proper IAM credentials  

---

## ▶️ How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/terraform-project.git
   cd terraform-project
Navigate into a project folder (e.g., tf_web_hosting/):


cd tf_web_hosting
Initialize Terraform:

```
terraform init

```
Preview the execution plan:
```
terraform plan
```
Apply the changes:

```
terraform apply
