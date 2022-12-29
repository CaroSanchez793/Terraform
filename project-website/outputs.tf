output "website_endpoint" {
    description = "Website endpoint"
    value = aws_s3_bucket.this.endpoint
}