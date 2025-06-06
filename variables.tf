variable "region" {
  type    = string
  default = "us-east-1"
}

variable "profile" {
  type    = string
  default = "default"
}

variable "vpc_id" {
  type = string
}

variable "ecs_cluster_name" {
  type    = string
  default = "trs-cluster"
}
