output "terraform-public-subnet-id" {
  #value = aws_subnet.terraform-public-subnet["a"].id
  value = toset([for subnet in aws_subnet.terraform-public-subnet : subnet.id])
}

output "terraform-vpc-id" {
  value = aws_vpc.terraform-vpc.id
}