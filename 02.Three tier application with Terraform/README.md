# 🌐 AWS 3-Tier Application Deployment with Terraform

This repository is created to **learn and deploy a 3-tier web application** on AWS Cloud using Terraform.

---

## 📦 Prerequisites

Before deploying, ensure the following components are in place:

- **Amazon S3**  
  Used to store the `.tfstate` file in the remote backend.

- **ACM (AWS Certificate Manager)**  
  Provision a certificate and make sure it's in the `ISSUED` state.

- **Hosted Zone**  
  Configure your DNS provider (e.g., Route 53) with the necessary hosted zone.

- **`terraform.tfvars` File**  
  Create this file at the root level with your specific variable values.

---

## 📁 Folder Structure

/ ├── Modules/         # Reusable Terraform modules  

  └── Main Files       # Entry-point .tf files at the root leve

---
### 🖼️ Architecture Diagram

![Architecture Diagram](root/Twolayer.png)

## 🛠️ AWS Services Breakdown

### 🚦 Network & Content Delivery

- **VPC**
- **Public / Private Subnets**
- **Route Tables**
- **Internet Gateway**
- **NAT Gateway**
- **Elastic IP (EIP)**
- **Security Groups**
- **Route 53** – DNS management
- **CloudFront** – CDN for efficient content delivery

### 🧮 Compute & Scaling

- **EC2 Instances** – Core application servers
- **Elastic Load Balancer**
- **Launch Templates**
- **Auto Scaling Groups**

### 🔐 Security & Compliance

- **AWS Certificate Manager (ACM)**  
  Manages SSL/TLS certificates for secure HTTPS communication.

## 🔑 Key Takeaways
- This architecture separates concerns across web, application, and database layers, improving scalability, security, and maintainability.
- Using Terraform modules promotes reusability and consistency across environments, making infrastructure-as-code both modular and production-ready.
- Integration of CloudFront, Route 53, and ACM ensures global content delivery with secure HTTPS access and custom domain support.
- Auto Scaling Groups and Launch Templates provide elasticity and fault tolerance, adapting to traffic demands automatically.
- Storing .tfstate in Amazon S3 with remote backend configuration ensures safe and collaborative state management across teams.
- This setup forms a solid foundation for deploying real-world applications with CI/CD, monitoring, and multi-AZ resilience.


## Feel free to fork the repo, raise issues, or suggest improvements. Happy deploying 🚀







                                                     

