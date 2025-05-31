module "vpc" {
  source = "./modules/vpc"
}

module "ecs" {
  source            = "./modules/ecs"
  ecs_cluster_name  = var.ecs_cluster_name
  vpc_id            = data.aws_vpc.default.id
}

module "alb" {
  source  = "./modules/alb"
  vpc_id  = data.aws_vpc.default.id
}

module "nlb" {
  source  = "./modules/nlb"
  vpc_id  = data.aws_vpc.default.id
}

module "r53" {
  source = "./modules/r53"
}

module "aurora" {
  source = "./modules/aurora"
  vpc_id = data.aws_vpc.default.id
}

module "s3" {
  source = "./modules/s3"
}

module "cross_account" {
  source = "./modules/cross_account"
}
