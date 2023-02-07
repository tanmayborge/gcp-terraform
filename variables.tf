variable "ubuntu-2204" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "instance_type" {
  type    = string
  default = "e2-micro"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-c"
}

variable "project" {
  type    = string
  default = "eloquent-ratio-376913"
}