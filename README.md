# Dynamic Website Hosting on AWS with Terraform

## Project Overview
This project involves hosting a dynamic website on AWS. The architecture leverages AWS cloud resources to ensure high availability, security, scalability, and fault tolerance.


## Project Repository
A GitHub repository has been created to store reference diagrams and deployment scripts. 

## Infrastructure as Code (IaC) using Terraform
This project also leverages Terraform to automate the provisioning and management of cloud infrastructure. It simplifies resource deployment, ensures consistency, and enhances scalability. You can find the Terraform configuration files in the following repository: [Terraform Project Repository](https://github.com/li-zhang1/terraform-ec2-projects).

## Architecture Diagram
Below is the architecture diagram illustrating the AWS resource deployment for this project:

![AWS Architecture](Dynamic_Web_App_on_AWS.png)

## AWS Resources Utilized
### 1. Networking and Security
- Configured a **Virtual Private Cloud (VPC)** with both public and private subnets across two Availability Zones.
- Deployed an **Internet Gateway** to enable connectivity between the VPC instances and the internet.
- Established **Security Groups** to function as network firewalls, restricting inbound and outbound traffic.
- Implemented **EC2 Instance Connect Endpoint** for secure access to both public and private subnets.
- Allowed instances in private subnets to access the internet via a **NAT Gateway**.

### 2. Compute Resources
- Hosted the website on **EC2 Instances** within **Private Subnets** for enhanced security.
- Utilized an **Application Load Balancer (ALB)** and a **target group** to distribute traffic efficiently to an **Auto Scaling Group**.
- Configured an **Auto Scaling Group** to ensure availability, scalability, fault tolerance, and elasticity.

### 3. Security & Monitoring
- Secured application communications using **AWS Certificate Manager (ACM)**.
- Configured **Simple Notification Service (SNS)** for activity alerts within the Auto Scaling Group.

### 4. Domain & Storage
- Registered the domain name and set up **DNS records using Route 53**.
- Used **Amazon S3** to store application code.

## Deployment Architecture
The website is hosted on EC2 instances behind an Application Load Balancer, utilizing an Auto Scaling Group across multiple Availability Zones. The infrastructure is deployed within a VPC with both public and private subnets, ensuring security and high availability. 

## How to Deploy
1. Clone the GitHub repository and review the reference architecture diagram.
2. Deploy the infrastructure using provided AWS CloudFormation or Terraform scripts.
3. Configure the necessary DNS records in Route 53.
4. Ensure security groups and IAM roles are correctly set up.
5. Deploy the website's application code to EC2 instances.

## Monitoring & Alerts
- CloudWatch is recommended for monitoring EC2 instances and load balancer metrics.
- SNS notifications are configured for Auto Scaling events.

## Conclusion
This project demonstrates how to deploy a scalable, secure, and fault-tolerant web application on AWS. By leveraging AWS services, we ensure reliability, security, and automated scaling for seamless operations.


