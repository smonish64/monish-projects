&#x20;                                   **THREE TIER ARCHITECTURE SETUP**



draw.io image



**VPC SETUP:**



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



**SECURITY GROUP:**

