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



* public subnet is created with CIDR range of 192.168.0.0/27 and named as pub-sub-1



* public subnet is created with CIDR range of 192.168.0.32/27 and named as pub-sub-2



**private subnet:**



* private subnet is created with CIDR range of 192.168.0.64/27 and named as pri-sub-1



* private subnet is created with CIDR range of 192.168.0.96/27 and named as pri-sub-2



* private subnet is created with CIDR range of 192.168.0.128/27 and named as pri-sub-3



* private subnet is created with CIDR range of 192.168.0.160/27 and named as pri-sub-4



**INTERNET GATEWAY:**



Internet gateway is created and attached to the VPC



**NAT GATEWAY:**



NAT gateway is created for the VPC and elastic IP is allocated for it.



**ROUTE TABLE:**



* public route table is created for target internet gateway and destination is 0.0.0.0/0



* private route table is created for target NAT gateway and destination is 0.0.0.0/0



NOTE: each route table is created for all public and private subnet

<img width="1875" height="556" alt="image" src="https://github.com/user-attachments/assets/a33c0b02-e654-4429-af70-0e677b0e1c71" />



**SECURITY GROUP:**



* web-tier-sg: For web tier inbound traffic is allowed from all sources and type is all traffic



* app-tier-sg: For application tier inbound traffic is allowed from the web-tier-sg and type is all traffic



* db-tier-sg: For database tier inbound traffic is allowed from app-tier-sg and type is all traffic



&#x20;

&#x20;                                                     **INSTANCE SETUP**



* **web\_server\_1**

&#x20;

launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pub-sub-1 and web-tier-sg to it



* **web\_server\_2**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pub-sub-2 subnet and web-tier-sg to it



* **app\_server\_1**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-1 subnet and app-tier-sg to it



* **app\_server\_2**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-2 subnet and app-tier-sg to it



* **db\_server\_1**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-3 subnet and db-tier-sg to it



* **db\_server\_2**



launch a instance with Amazon Linux 2023 kernel-6.1 AMI with instance type t3.micro and attach pri-sub-4 subnet and db-tier-sg to it





&#x20;                                                                  **OUTPUT**





