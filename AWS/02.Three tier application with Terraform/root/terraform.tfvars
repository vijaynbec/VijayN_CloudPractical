project_name    = "project-three-tier"
region = "us-east-1"
# vpc CIDR
vpc_cidr = "10.0.0.0/16"
# Web layer subnet
pub_sub_1a_cidr = "10.0.1.0/24"
pub_sub_2b_cidr = "10.0.2.0/24"
# App layer subnet
pri_sub_3a_cidr = "10.0.3.0/24"
pri_sub_4b_cidr = "10.0.4.0/24"
# DB layer subnet
pri_sub_5a_cidr = "10.0.5.0/24"
pri_sub_6b_cidr = "10.0.6.0/24"
db_username = "demo-db-rds"
db_password = "validatetf"
certificate_domain_name = "learn2cloudaws.click"
additional_domain_name = "learn2cloudaws.click"