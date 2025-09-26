🌐 VPC Peering Test Across US East and West – Terraform + AWS Console
🧱 Infrastructure Overview
• 	Two VPCs:  in ,  in 
• 	Two EC2 instances: One in each VPC, Amazon Linux 2
• 	VPC Peering: Created manually via AWS Console
• 	Connectivity Test: Ping from  EC2 to from one region to other region

🚀 Create Infrastructure using a Terraform

• 	Create the VPC, EC2, Subnets, Route table configuration using a Terraform code. (If you like you can have your own code by selecting your region of preference)

Terraform creates:
- vpc-useast with CIDR 10.0.0.0/16.
- vpc-uswest with CIDR 15.0.0.0/16.
- Networking components of VPC's will be crated - internet gateway, route tables, subnets.
- Security groups and EC2 instances in each regions.


Create a VPC peering from console by providing a details as below. 





  