# CICD_Lambda
IAM Roles: Codedeploy, Codebuild

CodeDeploy: (Lambda, Codedeploy)
             AmazonS3FullAccess
             AWSCodeDeployRoleForLambda
                add lambda access

Codebuild: 
              Default service role lambda actions as below)
             
 "Action": 
["lambda:AddPermission",                
"lambda:RemovePermission",               
"lambda:CreateAlias",                
"lambda:UpdateAlias",               
"lambda:DeleteAlias",               
 "lambda:GetFunction",               
 "lambda:UpdateFunctionCode",               
 "lambda:UpdateFunctionConfiguration",                
 "lambda:PutFunctionConcurrency",              
 "lambda:DeleteFunctionConcurrency",             
 "lambda:PublishVersion“]

Create the Lambda Function/Application code.
Define the alias via Console or scripts
Configure/define Code Build project and  buildspec.yml
Configure/define Code Build project and  buildspec.yml and attach the role
Configure/define Codedeploy, deploymentgroup, deployment using appspec.yml file and attach the role.


