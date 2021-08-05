variable "region" {
  default = "eu-central-1"
}
variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}
variable "name" {
  default = "corp.imedia24.com"
}
variable "password" {
  default = "Imedia24"
}
variable "az1" {
  default = "eu-central-1a"
}
variable "az2" {
  default = "eu-central-1b"
}
variable "landing_zone_providers" {
  default ={
    account_id = "123456789012"
    region     = "us-east-1"
  }
variable "landing_zone_components" {
  default =
  landing_zone_vpc = "s3://terraform-aws-landing-zone/components/landing_zone_vpc/*"
}
variable "terraform_backend" {
  default = {
    backend = "local"
    path    = "/tmp/.terrahub/landing_zone"
  }
}
