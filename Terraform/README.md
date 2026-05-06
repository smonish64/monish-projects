**TERRAFORM IMPLEMENTATION**





**OBJECTIVE:**



* To create a IAC for AWS environment to reduce the deployment time
* Create a CI/CD pipeline to automatically initiate terraform when the IAC code has new changes



**TERRAFORM FILES:**



* ec2.tf
* sg.tf
* vpc.tf
* output.tf
* alb.tf



**STEPS:**



Install terraform and create required .tf files required to create the architecture



intall AWS CLI and configure AWS access key



To initialize terraform operation use command
          
    terraform init

<img width="953" height="457" alt="Screenshot 2026-05-06 121352" src="https://github.com/user-attachments/assets/823cea77-4384-4158-9570-b0fd2b5a98c5" />


To check the code is valid use



    terraform validate



to see what the terraform code performs use the command



    terraform plan

to apply it in the 

    terraform apply

**What code does**

* Separate VPC is created in the name terraform-vpc
* creates 2 public and 2 private subnet
* one Internet gateway
* one NAT gateway
* public route table for public subnets and private route table for private subnets
* Security group is created for each tier and separate for ALB

  <img width="1847" height="471" alt="image" src="https://github.com/user-attachments/assets/1d13180f-ca85-4b07-93b1-3bd01ae4e4c5" />
  
* creates 6 instances 2 for web server, 2 for app server, 2 for database.

<img width="1886" height="296" alt="image" src="https://github.com/user-attachments/assets/a2a34020-1f54-4271-9c67-377affe3ea54" />
* ALB has a target group of two web instances


  
  


