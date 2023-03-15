resource "aws_s3_bucket" "bucket1" {
	bucket = "adnan-first-st-bucket"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
bucket = aws_s3_bucket.bucket1.id
acl = "private"
}

provider "aws" {
    access_key=var.accesskey
    secret_key=var.secretKey
  region = "eu-west-1"
}

variable "accesskey"{
    default="AKIAZTIMJ7JHDAJQWHUB"

}

variable "secretkey"{

    default="DR1KGT+eMQ+7oVcAMcSIM5/ZsYJ8vLbuf23mG6Dt"
}
