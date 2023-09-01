resource "aws_kms_key" "example" {
  description             = "example"
  deletion_window_in_days = 7
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
}

module "cluster" {
  source = "../../"
  name   = "test-cluster"

  configuration = {
    execute_command_configuration = {
      kms_key_id = aws_kms_key.example.arn
      logging    = "OVERRIDE"

      log_configuration = {
        s3_bucket_name               = aws_s3_bucket.example.bucket
        s3_bucket_encryption_enabled = true
        s3_key_prefix                = "test-logs"
      }
    }
  }
}
