terraform {
  backend "s3" {
    encrypt = false
    plan:
          extra_args: ["-lock=false"]
    bucket = "my-jan-s3-bucket"
    key = "main"
    region = "us-east-2"
    dynamodb_table = "my-jan-dynamodb"
  }
}
