module "my-ntier" {
    source = "./modules/my-ntier"
    region = "us-west-2"
    cidr_block = "192.168.0.0/16"
    subnet_cidr = [ "192.168.0.0/24","192.168.1.0/24" ]
    subnet_name_tags = [ "web","app" ]
    subnet_azs = [ "us-west-2a","us-west-2b" ]
   
  
}
