variable "aws_region" {
  type = "string"
  default = "us-east-1"
}

provider "aws" {
  region = "${var.aws_region}"
}

variable "az_1" {
  type = "string"
  default = "us-east-1a"
}

variable "az_2" {
  type = "string"
  default = "us-east-1b"
}

variable "az_3" {
  type = "string"
  default = "us-east-1c"
}

variable "application_name" {
  type = "string"
}

variable "environment_name" {
  type = "string"
  default = "dev"
}

variable "logs_bucket" {
  type = "string"
}

variable "key_name" {
  type = "string"
  default = "akka_boot"
}

variable "bastion_instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "bastion_key_name" {
  type = "string"
  default = "akka_boot"
}

variable "swarm_key_name" {
  type = "string"
  default = "akka_boot"
}

variable "swarm_manager_instance_type" {
  type = "string"
  default = "t2.medium"
}

variable "swarm_node_instance_type" {
  type = "string"
  default = "t2.medium"
}

variable "docker_username" {
  type = "string"
  description = "Username for Docker Hub"
}

variable "docker_password" {
  type = "string"
  description = "Password for Docker Hub"
}

resource "aws_s3_bucket" "logs" {
  bucket = "${var.logs_bucket}"
  acl = "private"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::127311923021:root"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::${var.logs_bucket}/${var.application_name}/${var.environment_name}/elbs/*"
    }
  ]
}
EOF
}