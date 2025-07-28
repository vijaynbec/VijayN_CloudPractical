variable "aws_region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "eks-prod-tf"
}

variable "k8s_version" {
  default = "1.29"
}

variable "private_subnet_ids" {
  type = list(string)

}

variable "node_instance_type" {
  default = "t3.medium"
}