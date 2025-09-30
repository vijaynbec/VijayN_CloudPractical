# 🌐 AWS Transit Gateway Peering Across Regions (CORS)
Note: Terraform was used to provision core infrastructure (VPCs, Subnets, EC2, Security Groups). Transit Gateways, attachments, and peering connections were configured manually via the AWS Console.


## 🧱 Infrastructure Overview
- Regions: US East (N. Virginia) and US West (Oregon)
- VPCs: One per region
- EC2 Instances: Amazon Linux 2, one per VPC
- Transit Gateways: Created manually in each region
- Attachments & Peering: Configured via AWS Console
- Connectivity Test: SSH and ping between EC2 instances across regions
- NACLs: Default NACLs used (allow all inbound/outbound traffic)

## 🔗 Manual TGW Peering Setup
- Create Transit Gateway in each region via AWS Console.
- Attach VPCs to their respective TGWs.
- Create Peering Connection:
- Initiate from US East TGW (requestor)
- Accept from US West TGW (acceptor)
- Verify Peering Status: Ensure all attachments and peering connections show available.


## 📍 Route Table Configuration
-VPC Route Tables
	- Add route to remote VPC CIDR via TGW attachment in each region.
-TGW Route Tables
	- Add route to remote VPC CIDR via peering attachment.
	
Note:
- Propagation is enabled for peering attachments.
- Association is set correctly for VPC attachments.

	Repeat for both regions to enable bidirectional traffic flow.

## 🧪 Connectivity Validation
- SSH into EC2 instance using its public IP.
- Copy the private key to the instance.


## ✅ Key Takeaways
- TGW Peering enables cross-region VPC communication, but requires precise route table and attachment configuration.
- Security Groups must allow ICMP and SSH from the remote VPC CIDR — SG references across regions do not work.
- Default NACLs allow all traffic, but custom NACLs must explicitly permit ICMP and TCP.



