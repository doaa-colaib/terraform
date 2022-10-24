resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "doaa"
  password             = "doaa1234"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

