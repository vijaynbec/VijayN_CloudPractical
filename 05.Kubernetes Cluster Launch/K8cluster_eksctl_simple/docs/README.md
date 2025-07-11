
🚀 Launching EKS with eksctl: Declarative & CLI Methods
📦 1. Install Prerequisites
- Install  on Windows
curl.exe -LO https://dl.k8s.io/release/v1.33.0/bin/windows/amd64/kubectl.exe
- Install  and add it to your system PATH.
💻 2. Create Cluster (Command Line Equivalent)
eksctl create cluster \
  --name my-cluster \
  --region us-east-1 \
  --version 1.32 \
  --nodegroup-name ng-managed \
  --node-type t2.micro \
  --nodes 2 \
  --managed
✅ 3. Validate & Delete

