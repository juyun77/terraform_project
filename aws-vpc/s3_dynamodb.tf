# resource "aws_s3_bucket" "my-s3-tf-state" {

#   bucket = "my-s3-tf-state"

#   tags = {
#     "Name" = "my-s3-tf-state"
#   }
  
# }

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