🌐 AWS Basic Networking Components – Connectivity Validation
This guide walks through setting up a basic AWS VPC network with public and private subnets, and validating EC2 connectivity across components.

### 🖼️ Architecture Diagram

![Architecture Diagram](vpcnetwork.drawio)

🧱 Step-by-Step Setup
1. Create VPC
VPC Name: network-vpc  
CIDR Block: 10.0.0.0/16

2. Create Subnets
Public Subnet: public-subnet-network (10.0.1.0/24)  
Private Subnet: private-subnet-network (10.0.2.0/24)

3. Internet Gateway
- Create Internet Gateway: network-igw  
- Attach to VPC: network-vpc  
- Associate with public-subnet-network

4. NAT Gateway
- Allocate Elastic IP  
- Create NAT Gateway in public-subnet-network  
- Associate Elastic IP with NAT Gateway

5. Route Tables
# Public Route Table
- Associate with public-subnet-network  
- Route: 0.0.0.0/0 → Internet Gateway

# Private Route Table
- Associate with private-subnet-network  
- Route: 0.0.0.0/0 → NAT Gateway
- 6. Security Groups
- Create Security Group  
- Inbound Rules: Allow SSH (port 22), ICMP (ping), HTTP/HTTPS  
- Outbound Rules: Allow all traffic


7. Launch EC2 Instances
- Public EC2: In public-subnet-network (with/without key pair)  
- Private EC2: In private-subnet-network (with/without key pair)  
- Attach Security Group to both instances




✅ Connectivity Validation
🔹 SSH into Public EC2
- Use your IDE or terminal to SSH into the public EC2 using its Elastic IP.
- Confirm the EC2 private IP is within the 10.0.1.0/24 range.
🔹 Connect to Private EC2
- From the public EC2, SSH into the private EC2 using its private IP.
- Confirm successful connection.
🔹 Validate NAT Gateway
- On the private EC2, run:







