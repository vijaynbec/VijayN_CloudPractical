# 🚀 Methods to Launch an EKS Cluster in AWS  #

You can launch an EKS cluster using various approaches depending on your automation preferences, infrastructure stack, and AWS experience.



## 🧰 1. Using eksctl (Recommended for Quick Start)
CLI tool created by Weaveworks that provisions the cluster and nodegroups in one command.


## 🔧 2. Using EC2 with AWS Consol 
Launch EKS via the graphical interface and some CLI within AWS instance.


## 🛠 3. Using Terraform (Infrastructure as Code)
Automate EKS provisioning using declarative HCL templates and modules.



## 🔑 Key Takeaways
- AWS offers multiple methods to launch EKS clusters, each suited to different levels of automation and expertise.
- eksctl is ideal for quick starts and prototyping, offering a one-command cluster setup.
- Using EC2 with AWS Console provides hands-on control and is great for learning the underlying components.
- Terraform enables scalable, repeatable, and version-controlled infrastructure provisioning—perfect for production environments and team collaboration.
- Choosing the right method depends on your goals: speed, control, or automation.

### Feel free to fork the repo, raise issues, or suggest improvements. Happy deploying 🚀

## 🚀 **Methods to Launch an EKS Cluster in AWS**

You can launch an EKS cluster using various approaches depending on your automation preferences, infrastructure stack, and AWS experience.

# 🚀 AWS EKS Cluster Launch Options

This module showcases three distinct methods to launch an Amazon EKS cluster, tailored for different levels of automation, control, and infrastructure maturity.

---

## 📦 Launch Methods Overview

| 🧰 **Method** | ⚙️ **Description** | 🔗 **Demo Folder** |
|---------------|-------------------|--------------------|
| **Using eksctl** | **Quick Start CLI Tool**<br>Provision EKS cluster and node groups with a single command using `eksctl`. Ideal for prototyping and fast onboarding. | [🔍 1.K8cluster_AWSEKS_eksctl_simple](./1.K8cluster_AWSEKS_eksctl_simple) |
| **Using EC2 + AWS Console** | **Manual Setup via Console**<br>Launch EKS using the AWS Console and EC2 instance CLI. Great for learning the underlying components and hands-on control. | [🔍 2.K8cluster_AWSEC2_console](./2.K8cluster_AWSEC2_console) |
| **Using Terraform** | **Infrastructure as Code (IaC)**<br>Automate EKS provisioning using declarative HCL templates and modules. Best suited for production-grade, version-controlled deployments. | [🔍 3.K8cluster_AWSEKS_terraform](./3.K8cluster_AWSEKS_terraform) |

---

## 🔑 Key Takeaways

- ✅ **eksctl** is perfect for quick starts and developer onboarding.
- 🖥️ **AWS Console + EC2** offers hands-on visibility into each component.
- 📜 **Terraform** enables scalable, repeatable, and team-friendly infrastructure automation.
- 🧠 Choose the method that aligns with your goals: **speed**, **control**, or **automation**.

---

## 💬 Contribute

Feel free to fork the repo, raise issues, or suggest improvements.  
**Happy deploying!** 🚀
