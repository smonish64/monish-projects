**TERRAFORM IMPLEMENTATION**





**OBJECTIVE:**



* To create a IAC for AWS environment to reduce the deployment time
* Create a CI/CD pipeline to automatically initiate terraform when the IAC code has new changes



**TERRAFORM FILES:**



* ec2.tf
* sg.tf
* vpc.tf
* output.tf



**STEPS:**



Install terraform and create required .tf files required to create the architecture



intall AWS CLI and configure AWS access key



To initialize terraform operation use command
          
    terraform init



To check the code is valid use



    terraform validate



to see what the terraform code performs use the command



    terraform plan

to apply it in the 

    terraform apply

**What code does**

* Separarate VPC is created in the name 


