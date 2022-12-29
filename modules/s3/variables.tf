variable "bucket_name" {
    description = "Name of the created bucket"
    type = string
    default = null
}

variable "tags" {
    description = "Bucket tags"
    type = map(string)
    default = {}  
}

variable "website_endpoint" {
    description = "Endpoint of the created website"
    type = string
    default = null
}

variable "acl" {
    description = "Access Control List of the bucket"
    type = string
    default = null
}

variable "status" {
    description = "Versioning status of the bucket"
    type = string
    default = null
}

variable "key" {
    description = "Object key to upload"
    type = string
    default = null
}

/*variable "source" {
    description = "Source of the object to upload"
    type = string
    default = null
}
*/

variable "etag" {
    description = "File identifier"
    type = string
    default = null
}
