variable "ami_id" {
    default = ""  #AMI ID specific to Mumbai Region
}

variable "instance_type" {
    default = ""
}

variable "vpc_id" {
    default = ""    #VPC ID of my account's default vpc
}

variable "port" {
    default = 22
}

variable "cidr_block" {
    default = ""
}


variable "create_vpc" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "bucket" {
  description = "The name of the bucket. (forces new resource, default: unique random name)"
  type        = string
  default     = null
}

variable "bucket_prefix" {
  description = "Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket. (forces new resource)"
  type        = string
  default     = null
}

variable "acl" {
  description = "The canned ACL to apply. https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl"
  type        = string
  default     = "private"
}    

variable "versioning" {
  description = "Boolean specifying enabled state of versioning or object containing detailed versioning configuration."
  type        = any
  default     = false
}    
