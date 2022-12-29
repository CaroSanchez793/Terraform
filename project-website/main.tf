module "s3" {
    source = "../modules/s3"

    bucket_name = "website-carolina"

    tags = { 
        "Name": "Website", 
        "Project": "Project-CICE", 
        "Environment": "Development", 
        "Owner": "Carolina", 
    }
    
    acl = "public-read"

    status = "Enabled"

    key = "index.html"

    etag = filemd5("index.html")
}