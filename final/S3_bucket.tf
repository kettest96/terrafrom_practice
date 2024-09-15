

resource "aws_s3_bucket" "bckt1" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_object" "file" {
  bucket = aws_s3_bucket.bckt1.bucket
  key    = "myfile.txt"
  source = "C:/terraform/final/myfile.txt"
}
