# 📐 AWS VPC Architecture – Basic Networking & Connectivity Validation

## 🖼️ Architecture Diagram
![AWS VPC Architecture](vpcnetwork.png)

## 🧱 Networking Components Setup 
_Note: This can achived by Terraform(IaC) or AWS Console_

1. VPC
   - Create network-vpc with CIDR block 10.0.0.0/16
2. Subnets
   - Public Subnet: public-subnet-network → 10.0.1.0/24
   - Private Subnet: private-subnet-network → 10.0.2.0/24
3. Internet Gateway
   - Create network-igw
   - Attach to network-vpc
   - Associate with public-subnet-network
4. NAT Gateway
   - Allocate Elastic IP
   - Create NAT Gateway in public-subnet-network
   - Associate Elastic IP
5. Route Tables
   - Public Route Table
   - Associate with public-subnet-network
   - Route: 0.0.0.0/0 → Internet Gateway
   - Private Route Table
   - Associate with private-subnet-network
   - Route: 0.0.0.0/0 → NAT Gateway
6. Security Groups
   - Inbound: Allow SSH (port 22), ICMP (ping), HTTP/HTTPS
   - Outbound: Allow all traffic
   - Attach to EC2 instances
7. EC2 Instances
   - Launch EC2 in public subnet (with/without key pair)
   - Launch EC2 in private subnet (with/without key pair)
   - Attach appropriate security group















