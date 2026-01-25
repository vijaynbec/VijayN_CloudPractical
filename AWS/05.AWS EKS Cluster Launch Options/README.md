
## 📦 EKS - Launch Methods Overview

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
