resource "aws_instance" "aws_ec2_Instance" {
  count=length(var.aws_ec2_tag)
  ami = "var.ami"
  instance_type = "t2.micro"

  tags = {
   Name = var.aws_ec2_tag[count.index],
   Owner = "itish",
   Purpose = "for ec2 instance"
  }
}


resource "aws_s3_bucket" "aws_s3_bucketInstance"{
    for_each=var.aws_s3_tag
    bucket=each.value["name"]
    tags={
        Name=each.value["name"]
        Owner=each.value["owner"]
        Purpose=each.value["purpose"]
    }
}
