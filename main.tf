provider "aws" {
    profile = "arniaws"
    region = "us-east-2"
}

resource "aws_s3_bucket" "b" {
    bucket = "myawsbucket125463584"
    acl = "private"

    tags = {
        Name = "My AWS Bucket"
        Environment = "Dev"
    }
}

