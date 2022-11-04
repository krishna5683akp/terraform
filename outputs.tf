output "vpcid" {
    value = aws_vpc.ntier_vpc.id 
}
output "subnettags" {
    value = aws_subnet.subnets
}
output "vpcname" {
    value = aws_vpc.ntier_vpc
}
output "subnet_azs" {
    value = var.subnet_azs
  
}
output "cidrblock" {
    value = aws_vpc.ntier_vpc
  
}
output "subents" {
    value = var.subnet_cidr
  
}
output "subnetcount" {
    value = length(var.subnet_cidr)
  
}