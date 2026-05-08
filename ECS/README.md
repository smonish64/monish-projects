**ECS DEPLOYMENT**



**PROJECT :** To deploy ECS cluster and Container from the ECR and mapping API based routing to the ALB to all containers in each port individually.



* First a vpc is created along with private and public subnets all other VPC dependencies are done
* Create a  Private ECR to store all the docker images 
* Then i created three separate docker files app,db and for payments each communicates with individual path and port 
* After creating a local docker image add a image tag for all the docker images separately
  <img width="680" height="96" alt="Screenshot 2026-05-07 151156" src="https://github.com/user-attachments/assets/6df7a3ef-8ca3-4ffd-90ac-de320f331268" />

* Connect the EKS with local with AWS credentials and then i pushed push docker image to ECR in AWS
  <img width="949" height="255" alt="Screenshot 2026-05-07 150920" src="https://github.com/user-attachments/assets/1240ca43-82c7-4ba6-bd8a-c985ca850c84" />

* Created a ECS cluster and task definition for each image then service is launched for all task definition individually
* after deployment check all the services are running healthy
  <img width="926" height="164" alt="Screenshot 2026-05-07 151040" src="https://github.com/user-attachments/assets/47d5d903-3848-41fa-a664-8243e9ed8996" />

* ALB is deployed to establish API based routing to all containers
* Target group is configured based on the port value and private IP of the service running tasks
  <img width="686" height="88" alt="Screenshot 2026-05-07 150848" src="https://github.com/user-attachments/assets/7c070f84-d77c-44a7-8337-15a9feaec54a" />

* Atlast attach target group to the ALB and check the health status of it
  <img width="917" height="335" alt="Screenshot 2026-05-07 150820" src="https://github.com/user-attachments/assets/9870285b-8467-4f57-99f2-840bcff29877" />

* using ALB DNS name check the web pages running properly
<br/>
**APPLICATION CONTAINER:**
<img width="866" height="196" alt="Screenshot 2026-05-07 170515" src="https://github.com/user-attachments/assets/282ad662-5781-475c-959b-b05770ad5323" />
<br/>
**DATABASE CONTAINER:**
<img width="950" height="190" alt="Screenshot 2026-05-07 170439" src="https://github.com/user-attachments/assets/be70defb-4df6-412e-9230-a1df6c5f20b6" />
<br/>
**PAYMENTS CONTAINER:**
<img width="956" height="152" alt="Screenshot 2026-05-07 170408" src="https://github.com/user-attachments/assets/decb5f32-2bae-4fba-aa12-47b06238e4e0" />
<br/>
