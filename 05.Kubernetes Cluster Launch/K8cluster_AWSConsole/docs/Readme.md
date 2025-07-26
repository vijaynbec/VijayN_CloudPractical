🚀 Launch Amazon EKS Using EC2 Ubuntu Client
This guide outlines how to provision an Amazon EKS cluster using eksctl from a lightweight Ubuntu EC2 instance. You'll install required tools, configure IAM permissions, deploy an app, and clean up when done.

⚙️ Step-by-Step Instructions
1️⃣ Launch EC2 Ubuntu Instance
- Instance Type: t2.micro (Free Tier eligible)
- AMI: Ubuntu 20.04+
- Use it as your EKS management client.
- Connect via SSH:
ssh -i <keypair.pem> ubuntu@<ec2-public-ip>





