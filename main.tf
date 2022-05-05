provider "aws" {
    region = "us-east-1"
    access_key = "AKIAWNPAON5TKFCGMVPF"
    secret_key = "vaE7OQcvFuDpPyomBNIdGPdgWo0X6a5PyB+s2X37"
}
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-example-bucket-arni"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
