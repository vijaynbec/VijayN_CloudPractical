# 🌐 Static Website Hosting on AWS with Automated Deployment

This repository provides an detail steps **host a static website** using AWS services along with 
CICD integration.

---


## 🧰 AWS Services Used

- **Amazon S3** – Static content storage and website hosting
- **CloudFront** – CDN for efficient, secure content delivery
- **Route 53** – Domain registration and DNS configuration
- **AWS Certificate Manager (ACM)** – SSL/TLS certificate provisioning
- **AWS CodePipeline** – Continuous deployment pipeline

---

## 🚀 Implementation Steps

### 1️⃣ Set Up the S3 Bucket

- Create a new S3 bucket.
- Keep default settings and block all public access.
- Enable **Static Website Hosting** in the bucket properties.
- Upload sample HTML content or your static site files.

---

### 2️⃣ Configure Route 53 for Domain Registration

- Register your custom domain using **Amazon Route 53**.
- Validate and ensure your domain is in an `ACTIVE` state.

---

### 3️⃣ Set Up CloudFront

- Create a **CloudFront distribution** and set your S3 bucket as the origin.
- Enable **Origin Access Identity (OAI)** to securely connect CloudFront with S3.
- Modify caching behavior, HTTP methods, and set the desired Price Class.
- Use **ACM** to generate an SSL certificate (refer to Step 4).
- Specify the default root object (e.g., `index.html`).
- Verify that the CloudFront URL correctly serves your site content.

---

### 4️⃣ Create an SSL Certificate with AWS Certificate Manager

- Request a public certificate in **ACM** for your domain and subdomains.
- Use **Route 53 DNS validation** by creating CNAME records as prompted.

---

### 5️⃣ Configure Alternate Domain Names

- Add **alternate domain names (CNAMEs)** in the CloudFront distribution settings.
- Update your **Route 53 DNS records** to route traffic to CloudFront.

---

### 6️⃣ Automate Deployment with AWS CodePipeline

- Create a **custom CodePipeline** that uses GitHub as the source.
- Skip build/staging steps; direct deploy content to the S3 bucket.
- Test that changes in the repository reflect on the live website.
- If updates don’t appear, **invalidate the CloudFront cache** to clear old content.

---

## ✅ Final Output

A fully functional, secure, and scalable static website delivered via AWS services, automatically updated through GitHub integration.

---

Happy hosting! 🎉