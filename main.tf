provider "aws" {
    region = "us-east-1"
    profile = "arniaws"
}
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-example-bucket-arni"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
