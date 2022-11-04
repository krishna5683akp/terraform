resource "aws_vpc" "ntier_vpc" {
    cidr_block = var.cidr_block
    tags = {
        "Name" = "ntiervpc"
    }
  
}
resource "aws_subnet" "subnets" {
    count = length(var.subnet_cidr)
    cidr_block = var.subnet_cidr[count.index]
    vpc_id = aws_vpc.ntier_vpc.id
    tags = {
      "Name" = var.subnet_name_tags[count.index]
    }
    depends_on = [
      aws_vpc.ntier_vpc
    ]
}