# 🚀 CI/CD Pipeline with AWS Lambda

## 🔐 IAM Roles

### CodeDeploy
- **Required Policies**:
  - `AmazonS3FullAccess`
  - `AWSCodeDeployRoleForLambda`
  - Add necessary Lambda permissions

### CodeBuild
- **Default Service Role Permissions**:
  ```json
  "Action": [
    "lambda:AddPermission",
    "lambda:RemovePermission",
    "lambda:CreateAlias",
    "lambda:UpdateAlias",
    "lambda:DeleteAlias",
    "lambda:GetFunction",
    "lambda:UpdateFunctionCode",
    "lambda:UpdateFunctionConfiguration",
    "lambda:PutFunctionConcurrency",
    "lambda:DeleteFunctionConcurrency",
    "lambda:PublishVersion"
  ]
  
### 🛠️ Setup Steps
- **Create Lambda Function/Application Code**

- **Define an Alias**

- **Set up via AWS Console or automation scripts**

- **Configure CodeBuild Project**

- **Include your buildspec.yml**

- **Attach the appropriate IAM role**

- **Configure CodeDeploy**

- **Set up deployment group and deployment**

- **Use appspec.yml**

- **Attach the IAM role**

- **Final Output**

A fully automated CI/CD pipeline that builds, packages, and deploys your Lambda Function
![Final Output](LambdaCICD.png)

## 🔑 Key Takeaways
- This setup demonstrates a fully serverless CI/CD pipeline using AWS-native services to automate Lambda deployments with zero manual intervention.
- CodeBuild handles packaging and versioning, while CodeDeploy manages safe rollouts using aliases and deployment groups.
- Using Lambda aliases enables blue/green or canary deployments, reducing risk during updates.
- IAM roles and permissions are critical—each service must have scoped access to interact with Lambda, S3, and CodeDeploy.
- This architecture is ideal for microservices, event-driven applications, and rapid iteration cycles with minimal infrastructure overhead.


## Feel free to fork the repo, raise issues, or suggest improvements. Happy deploying 🚀

