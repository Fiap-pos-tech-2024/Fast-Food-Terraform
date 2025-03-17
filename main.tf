resource "aws_db_instance" "fastfood_db" {
  allocated_storage    = 20
  engine              = "postgres"
  engine_version      = "14.2"
  instance_class      = var.db_instance_class
  db_name             = var.db_name
  username           = var.db_username
  password           = var.db_password
  publicly_accessible = false
  skip_final_snapshot = true
}
