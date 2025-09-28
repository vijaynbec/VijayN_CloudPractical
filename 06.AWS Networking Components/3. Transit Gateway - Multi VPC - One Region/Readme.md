# 🧭 AWS Transit Gateway Lab: Multi-VPC Connectivity in a Single Region

## Overview
Demonstrates how to use AWS Transit Gateway to connect three VPCs within the same region, each hosting an EC2 instance. 
It showcases how Transit Gateway simplifies network architecture by enabling centralized routing between VPCs.

## 🚀 Use Case
- ✅ Connect multiple VPCs with different CIDR blocks
- ✅ Enable private IP communication between EC2 instances across VPCs
- ✅ Test Transit Gateway Attachments and route table updates
- ✅ Validate connectivity using ping/SSH between instances


## 🧱 Architecture
  - Region: us-east-1
  - Transit Gateway: Single TGW created in the region
  - VPCs:
    - VPC1: 10.0.0.0/16
    - VPC2: 10.1.0.0/16
    - VPC3: 10.2.0.0/16
  - EC2 Instances: One per VPC
  - Routing: TGW route propagation and manual route table updates
  - Security: SGs configured for SSH and ICMP (ping) - optional

## 🛠️ Setup Steps - First two steps implemented via Terraform
  - Create Three VPCs
	- Assign unique CIDR blocks
	- Create one public subnet per VPC
	- Attach Internet Gateway (IGW)
	- Create route table and associate with subnet
	- Configure Security Group to allow:
	- SSH (port 22) from your IP
	- ICMP (ping) from VPC CIDR ranges
  - Launch EC2 Instances
	- Use Amazon Linux 2 AMI
    - Assign public IP for initial SSH access
    - Use appropriate key pair per VPC
  - Create Transit Gateway
	- Enable DNS support and ECMP (optional)
	- Tag for clarity (e.g., Name = TGW-MultiVPC)
  - Create Transit Gateway Attachments
	- Attach each VPC to the TGW
	- Accept attachments if needed - Wait for available status
  - Update VPC Route Tables
	- Add routes for other VPC CIDRs pointing to TGW
	  - Example: In VPC1 route table, add 10.1.0.0/16 → TGW-ID
  - Test Connectivity
	- SSH into first EC2 instance using public IP
	  - Connect other EC2 instances using their private IPs


# 🧠 Key Takeaways
- Transit Gateway simplifies VPC-to-VPC communication by eliminating the need for complex peering meshes.
- Route table updates are essential — TGW does not automatically propagate routes to VPC route tables.
- Security Groups must allow traffic from peer VPC CIDRs for successful communication.
- Public IP access is only needed for the first login; private IPs are used for inter-VPC traffic.

📁 Repo Structure
├── modules/
│   └── network/         # VPC, Subnet, IGW, EC2, SG
├── main.tf              # Root module with 3 VPCs and TGW
├── variables.tf         # Input variables
├── outputs.tf           # TGW and EC2 outputs
└── README.md            # Documentation



# ✅ Next Steps
- Add Transit Gateway route tables for more granular control
- Extend to cross-region TGW peering
- Test cross-account VPC attachments
- Automate with Terraform for_each or dynamic blocks


