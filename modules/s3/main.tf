resource "aws_s3_bucket" "this" {
    bucket = var.bucket_name
    tags = var.tags
}

resource "aws_s3_bucket_acl" "this" {
    bucket = aws_s3_bucket.this.id
    acl = var.acl
}

resource "aws_s3_bucket_versioning" "this" {
    bucket = aws_s3_bucket.this.id
    versioning_configuration {
      status = var.status
    }
}

resource "aws_s3_bucket_object" "this" {
    bucket = aws_s3_bucket.this.id
    key = var.key
    #source = var.source
    etag = var.etag 
}

