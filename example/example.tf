provider "google" {
  project = "testing-gcp-ops"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

#---------------------------------------(sql-server)-------------------------------------------------
module "mssql" {
  source                  = "../"
  name                    = "dev"
  user_name               = "mssql"
  db_name                 = "testdb"
  environment             = "test"
  user_password           = "foobar"
  random_instance_name    = true
  deletion_protection     = false
  sql_server_audit_config = var.sql_server_audit_config
}

