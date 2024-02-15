terraform {
  required_providers {
    aws = {
      source = "opentofu/aws"
      version = "~> 5.36"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = var.BUCKET_NAME
    key = var.BUCKET_KEY
    region = var.AWS_REGION
  }
}

provider "aws" {
  region = var.AWS_REGION
}

resource "aws_db_instance" "taskit_db" {
  allocated_storage = 5
  db_name = var.DB_NAME
  engine = "postgres"
  engine_version = "15.2"
  identifier = "taskit-db"
  instance_class = "db.t3.micro"
  username = var.DB_USERNAME
  password = var.DB_PASSWORD
  publicly_accessible = true
  skip_final_snapshot = true

  tags = {
    owner = "rudolphe@bbd.co.za"
  }
}
