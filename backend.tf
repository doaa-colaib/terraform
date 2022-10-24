terraform {
    backend "s3" {
        bucket = "sec-doaa-bucket"
        dynamodb_table = "my-table"
        region = "us-east-1"
        key = "terraform.tfstate"
    }
}