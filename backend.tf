terraform {
    backend "s3"{
        bucket="itish-tf-backend"
        key="terraform.tfstate"
        region="ap-south-1"
        dynamodb_table = "itish-table"
    }
}