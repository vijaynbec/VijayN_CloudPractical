# 📐 AWS VPC Architecture – Basic Networking & Connectivity Validation

## 🖼️ Architecture Diagram
![AWS VPC Architecture](vpcnetwork.png)

## 🧱 Networking Components Setup - This can achived by Terraform(IaC) or AWX Console

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













