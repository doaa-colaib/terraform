terraform {
    backend "s3" {
        bucket = "my-doaa-bucket"
        dynamodb_table = "my-db"
        region = "us-east-1"
        key = "terraform.tfstate"
    }
}