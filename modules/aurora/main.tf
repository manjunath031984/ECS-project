resource "aws_rds_cluster" "trs_aurora" {
  cluster_identifier      = "trs-aurora"
  engine                  = "aurora-postgresql"
  master_username         = var.master_username
  master_password         = var.master_password
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  db_subnet_group_name    = aws_db_subnet_group.trs_subnet_group.name
  vpc_security_group_ids  = [var.db_sg_id]
}

resource "aws_db_subnet_group" "trs_subnet_group" {
  name       = "trs-subnet-group"
  subnet_ids = var.db_subnets
}

output "cluster_endpoint" {
  value = aws_rds_cluster.trs_aurora.endpoint
}
