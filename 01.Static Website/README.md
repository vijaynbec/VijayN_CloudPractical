

# Hosting a Secured Static Website with automatic implementation using AWS Services:

**AWS Services for this implementation:**                    
> S3                                                                                                                                                                
> CloudFront                                           
> Route 53                                                     
> Certification Manager                                                      
> CodePipeline                             


**Steps to be followed:**
> Set Up the S3 Bucket                       
> Configure Route 53 for Domain Registration                                  
> Set Up CloudFront                                          
> Create new SSL certificate using ACM                                               
> Configure Alternate Domain Names                                            
> Automate Deployment with CodePipeline




*Set Up the S3 Bucket*



            o	Create an S3 bucket, ensuring that public access is blocked and settings remain default.
                       ![Image](https://github.com/user-attachments/assets/0c7c7c9a-5f79-4161-86ac-028dd7db5254)

            
 
            o	Enable the static website hosting feature in the bucket.
 
            o	Upload the sample content html page of your choice.
                                    
*Configure Route 53 for Domain Registration*

            o	Register your domain through Route 53 and verify the registry status.

 
*Set Up CloudFront*

           o	Create a CloudFront distribution and reference the S3 bucket as the origin.
 
           o	Enable Origin Access Identity (OAI) and apply a bucket policy to allow CloudFront access.

           o	Adjust caching settings, HTTP methods, and select the appropriate Price Class.
 
 
           o	Use AWS Certificate Manager (ACM) to generate an SSL certificate and apply
                        (Certificate creation refer step#4)
 
           o	Specify the default object for the distribution.
 
           o	Verify that the CloudFront domain name correctly serves the website content stored in S3.
 
*Create new SSL certificate using ACM*

           o	Request a public SSL certificate for your domain through ACM.
 
           o	Validate the certificate by creating DNS records (CNAME) in Route 53.


*Configure Alternate Domain Names*

            o	Add alternate domain names (CNAMEs) for accessing the CloudFront distribution.
  
            o	Update Route 53 DNS records to accommodate these alternate names.

*Automate Deployment with CodePipeline*
            o	Set up a custom pipeline, integrating GitHub as the source repository.
 
            o	Skip the build and staging steps; directly deploy the content to the target S3 bucket.
 
            o	Validate the website to ensure content synchronization with the GitHub repository.
 
            o	If webpage not changed as expected, clear the CloudFront distribution cache for ulatest pdates to reflect on domain page
 


