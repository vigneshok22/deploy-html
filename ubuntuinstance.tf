provider "aws"{
     region = "us-west-2"
}
resource "aws_instance""ramser"{
   count = "1"
   ami = "ami-074251216af698218"
   instance_type = "t2.micro"
   key_name = "ramkeynew"
   subnet_id = "subnet-0855548b411ab5108"
   security_groups = ["sg-092cd51b74e79a773"]
   tags={
    Name = "serverram"
    Env = "dev"
}
}
