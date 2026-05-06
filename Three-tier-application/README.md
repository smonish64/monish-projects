&#x20;                                              **THREE TIER ARCHITECTURE SETUP**



draw.io image



&#x20;                                                          **VPC SETUP:**





* VPC
* subnets
* Internet gateway
* NAT gateway
* Route tables
* security group





**VPC CREATION:**



A dedicated VPC is created for the architecture with CIDR range of 192.168.0.0/24 and named as three-tier-VPC and total usable IP's are 254



**SUBNET CREATION:**



**public subnet:**



* public subnet is created with CIDR range of 192.168.0.0/28 and named as pub-sub-1



* public subnet is created with CIDR range of 192.168.0.16/28 and named as pub-sub-2



**private subnet:**



* private subnet is created with CIDR range of 192.168.0.128/28 and named as pri-sub-1



* private subnet is created with CIDR range of 192.168.0.160/28 and named as pri-sub-2



* private subnet is created with CIDR range of 192.168.0.144/28 and named as pri-sub-3



* private subnet is created with CIDR range of 192.168.0.176/28 and named as pri-sub-4



**INTERNET GATEWAY:**



Internet gateway is created and attached to the VPC and name it as IGW-three-tier



**NAT GATEWAY:**



NAT gateway is created for the VPC and elastic IP is allocated for it and name it as nat-three-tier







**ROUTE TABLE:**



* public route table is created for target internet gateway and destination is 0.0.0.0/0



* private route table is created for target NAT gateway and destination is 0.0.0.0/0



NOTE: each route table is created for all private subnet individually



&#x20;
<img width="1898" height="580" alt="Screenshot 2026-05-05 130708" src="https://github.com/user-attachments/assets/01e9f7b1-82eb-489d-b85a-5a92c8d45fb8" />



**SECURITY GROUP:**



* **web-sg:** For web tier inbound traffic is allowed from alb-sg and type is all HTTP and add my IP as source for all traffic 



* **app-sg:** For application tier inbound traffic is allowed from the web-sg and type is all HTTP and add my IP as source for all traffic



* **db-sg:** For database tier inbound traffic is allowed from app-sg and type is all HTTP and add my IP as source for all traffic



* **alb-sg:** For alb all traffic is allowed in inbound from all sources

<img width="1906" height="308" alt="Screenshot 2026-05-05 130806" src="https://github.com/user-attachments/assets/e62559d0-dd3d-4c8b-9c52-40496790468e" />



&#x20;

&#x20;                                                     **INSTANCE SETUP**



* **web\_server\_1**

&#x20;

launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pub-sub-1 and web-sg to it



* **web\_server\_2**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pub-sub-2 subnet and web-sg to it



* **app\_server\_1**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-1 subnet and app-sg to it



* **app\_server\_2**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-2 subnet and app-sg to it



* **db\_server\_1**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-3 subnet and db-sg to it



* **db\_server\_2**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-4 subnet and db-sg to it


<img width="1571" height="432" alt="Screenshot 2026-05-05 125900" src="https://github.com/user-attachments/assets/1ab7502a-a37d-4352-ad42-764d9cce14e8" />





&#x20;                                                      **APPLICATION LOAD BALANCER**





* create a application load balancer facing internet and add listener as http and port 80



* Target groups are web\_server\_1 and web\_server\_2 and attach them to the load balancer and check the health of the target groups.




<img width="1871" height="535" alt="Screenshot 2026-05-05 130609" src="https://github.com/user-attachments/assets/17a5e989-1fea-4ff5-8102-cefba94eb828" />





&#x20;                                               **OUTPUT FOR THE THREE TIER APPLICATION**





<img width="1899" height="847" alt="Screenshot 2026-05-05 132951" src="https://github.com/user-attachments/assets/7422a087-5163-464b-acb6-398ee9b002e8" />

