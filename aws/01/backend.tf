terraform {
  backend "s3" {
    bucket = "piiaap-test-bucket-323522642586"
    key    = "poc-dns-failover/terraform.tfstate"
    region = "us-east-1"
  }
}