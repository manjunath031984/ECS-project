data "aws_iam_policy_document" "cross_account_access" {
  statement {
    actions = ["s3:GetObject", "s3:PutObject"]
    resources = ["arn:aws:s3:::external-account-bucket/*"]
    principals {
      type        = "AWS"
      identifiers = [var.external_account_id]
    }
  }
}

resource "aws_s3_bucket_policy" "cross_account_policy" {
  bucket = var.bucket_name
  policy = data.aws_iam_policy_document.cross_account_access.json
}
