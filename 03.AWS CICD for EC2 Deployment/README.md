# 🚀 Flask_app_CICD – CI/CD Pipeline with AWS on EC2

This project demonstrates how to implement a **CI/CD pipeline** for deploying a Flask application to an EC2 instance using AWS services like ECR, CodeBuild, CodeDeploy, and CodePipeline.

---

## 🧰 AWS Services Used

- **Amazon EC2** – Host the Flask application
- **Amazon ECR** – Store Docker images
- **AWS CodeBuild** – Build and push container images
- **AWS CodeDeploy** – Deploy applications to EC2
- **AWS CodePipeline** – Automate the build → deploy process
- **Amazon S3** – Store deployment artifacts

## 📊 Architecture Diagram

<img src="docs/AWS_CI_CD_pipeline_EC2.png" alt="Architecture Diagram" width="600" height="400"/>

---

## 🔐 IAM Roles Setup

### EC2 Instance Role
Attach a role with the following policies:
- `AmazonEC2ContainerRegistryFullAccess`
- `AmazonS3FullAccess`
- `AWSCodeDeployFullAccess`

### CodeDeploy Role (for EC2 deployments)
- `AmazonEC2RoleforAWSCodeDeploy`
- `AWSCodeDeployFullAccess`

### CodeBuild Role (for image build & push)
- `AmazonEC2ContainerRegistryFullAccess`

---

## 🔧 Project Setup Overview

1. **Push Application Code**
   - Write your Flask app code and commit it to your Git repository.

2. **Create ECR Repository**
   - Host Docker container images for your app.

3. **Set Up CodeBuild**
   - Define `buildspec.yml`.
   - Create a CodeBuild project and assign the appropriate IAM role.

4. **Set Up CodeDeploy**
   - Define `appspec.yml` for deployment configuration.
   - Create a deployment application and group.
   - Assign CodeDeploy IAM role.

5. **Create CodePipeline**
   - Use GitHub (or CodeCommit) as the source.
   - Connect it to CodeBuild → CodeDeploy.
   - Use default service role or specify a custom one.

---

## 🖥️ EC2 Instance Preparation

1. **Launch EC2**
   - Use Ubuntu AMI.
   - Attach IAM role and assign a security group with inbound access (e.g., HTTP).

2. **Install CodeDeploy Agent**
   ```bash
   sudo apt update
   sudo apt install ruby-full wget
   cd /home/ubuntu
   wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
   chmod +x ./install
   sudo ./install auto
   sudo service codedeploy-agent status

3. **Install and Configure Nginx**
   ```bash
   sudo apt install nginx
   sudo vim /etc/nginx/sites-available/default
   
4. **Replace the location block with**
   ```bash
   proxy_pass http://127.0.0.1:5000;

5. **Restart Nginx** 


    sudo systemctl restart nginx


6. **Final Output**

A fully automated CI/CD pipeline that builds, packages, and deploys your Flask app to a running EC2 instance via Docker, 
complete with traffic routing through Nginx

---
Feel free to fork the repo, raise issues, or suggest improvements. Happy deploying 🚀
 
