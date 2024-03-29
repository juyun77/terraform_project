

resource "aws_s3_bucket" "cooktail" {
  bucket = "cooktail"

  tags = {
    environment = "cooktail"
  }
}

resource "aws_s3_bucket_public_access_block" "public-access" {
  bucket = aws_s3_bucket.cooktail.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "learn-terraform-sample-txt" {
  bucket = aws_s3_bucket.cooktail.id
  key    = "sample.txt"
  source = "sample.txt"
}

resource "aws_s3_bucket_policy" "bucket-policy" {
  bucket = aws_s3_bucket.cooktail.id

  depends_on = [
    aws_s3_bucket_public_access_block.public-access
  ]

  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"PublicRead",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::${aws_s3_bucket.cooktail.id}/*"]
    }
  ]
}
POLICY
}



# resource "aws_dynamodb_table" "my-ddb-tf-lock" {

#   depends_on   = [aws_s3_bucket.my-s3-tf-state]
#   name         = "my-ddb-tf-lock"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = {
#     "Name" = "my-ddb-tf-lock"
#   }

# }