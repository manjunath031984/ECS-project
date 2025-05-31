variable "master_username" {
  type = string
}

variable "master_password" {
  type = string
}

variable "db_subnets" {
  type = list(string)
}

variable "db_sg_id" {
  type = string
}
