output "itishec2Output"{
    
    value=[for i in var.aws_ec2_tag:i]
    description="EC2 instance created"
}


output "itishs3output"{

    value=[for y in var.aws_s3_tag:y["name"]]
    description="s3 bucket created"
}