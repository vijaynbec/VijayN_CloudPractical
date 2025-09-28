
#  🚀 Launching EKS with eksctl: CLI method - Simplest


📦 1. Install Prerequisites
- Install kubectl - https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/
  
      curl.exe -LO https://dl.k8s.io/release/v1.33.0/bin/windows/amd64/kubectl.exe
  
- Install eksctl and add it to your system PATH - https://eksctl.io/installation/


💻 2. Create Cluster (Command Line Equivalent)


      eksctl create cluster \
        --name my-cluster \
        --region us-east-1 \
        --version 1.32 \
        --nodegroup-name ng-managed \
        --node-type t2.micro \
        --nodes 2 \
        --managed


  
✅ 3. Validate

![Validate](eks_ui1.png)

![Validate](eks_ui2.png)

✅ 4. Delete Cluster

## 🔑 Key Takeaways
- eksctl provides the simplest CLI-based method to launch, manage, and delete EKS clusters with minimal configuration.
- Automating cluster creation via command line accelerates setup and ensures consistency across environments.
- Using managed node groups simplifies scaling and maintenance, offloading operational overhead to AWS.
- Validating cluster status through the AWS Console and kubectl ensures your control plane and worker nodes are healthy.
- Clean teardown with eksctl delete cluster avoids lingering resources and helps manage cloud costs effectively

  
   eksctl delete cluster --name my-cluster --region us-east-1
   
