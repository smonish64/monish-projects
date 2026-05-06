output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.vpc.id
}

output "public_subnet_ids1" {
  description = "Public subnet 1 IDs"
 value =[ 
  aws_subnet.public_01.id,
  aws_subnet.public_02.id,
]
}

output "private_subnet_ids1" {
  description = "Private subnet 1 IDs"
  value       = [
  aws_subnet.private_01.id,
  aws_subnet.private_02.id,
  aws_subnet.private_03.id,
  aws_subnet.private_04.id,
]
}


output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.gw.id
}

output "nat_gateway_ip" {
  description = "NAT Gateway IP"
  value = aws_eip.one.public_ip
}
output "insID" {
	description = "The instance ID"
	value = [
    aws_instance.appins1.id,
    aws_instance.dbins1.id,
    aws_instance.webins1.id,
]
}
output "inspriIP" {
  description = "The instance private IP"
  value = [
    aws_instance.appins1.private_ip,
    aws_instance.dbins1.private_ip,
    aws_instance.webins1.private_ip,
  ]
}