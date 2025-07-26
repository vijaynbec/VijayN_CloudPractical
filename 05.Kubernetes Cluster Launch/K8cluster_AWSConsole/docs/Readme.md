##  🚀 Launch Amazon EKS Using EC2 Ubuntu Client

This guide outlines how to provision an Amazon EKS cluster using eksctl from a lightweight Ubuntu EC2 instance. You'll install required tools, configure IAM permissions, deploy an app, and clean up when done.

# ⚙️ Step-by-Step Instructions
1️⃣ Launch EC2 Ubuntu Instance
- Instance Type: t2.micro (Free Tier eligible)
- AMI: Ubuntu 20.04+
- Use it as your EKS management client.
- Connect via SSH:


2️⃣ Install kubectl

      curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
      chmod +x ./kubectl
      sudo mv ./kubectl /usr/local/bin
      kubectl version --short --client



3️⃣ Install AWS CLI and eksctl
🔹 AWS CLI
sudo apt update
sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version


🔹 eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version










