**CI/CD PIPELINE FOR TERRAFORM**



**Project:** Creating a CI/CD pipeline to automate the terraform deployment when there is a commit occurs in the directory



* First create a terraform file to deploy the infrastructure on the AWS environment and test it locally
* Create a folder named pipeline and store all the terraform files in it
* create a s3.tf that store all the terraform state of the previous commit this avoids the duplication of the code in the AWS
* Create a workflow for the terraform in the GitHub and use the commands and steps that are required
* AWS access key id and access key value are stored in the GitHub secrets and variables section 
* check the workflow is running whenever a commit occurs in the pipeline folder
