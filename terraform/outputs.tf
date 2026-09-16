output "cluster_id" {
  value = digitalocean_kubernetes_cluster.main.id
}

output "db_host" {
  value = digitalocean_database_cluster.postgres.host
}

output "db_port" {
  value = digitalocean_database_cluster.postgres.port
}

output "db_admin_password" {
  value     = digitalocean_database_cluster.postgres.password
  sensitive = true
}

output "db_user_password" {
  value     = digitalocean_database_user.app.password
  sensitive = true
}

output "db_connection_url" {
  value     = "jdbc:postgresql://${digitalocean_database_cluster.postgres.host}:${digitalocean_database_cluster.postgres.port}/${var.db_name}?sslmode=require"
  sensitive = false
}

output "mysql_host" {
  value = digitalocean_database_cluster.mysql.host
}

output "mysql_port" {
  value = digitalocean_database_cluster.mysql.port
}

output "mysql_user_password" {
  value     = digitalocean_database_user.module_app.password
  sensitive = true
}

output "mysql_connection_url" {
  value     = "mysql+pymysql://${digitalocean_database_user.module_app.name}:${digitalocean_database_user.module_app.password}@${digitalocean_database_cluster.mysql.host}:${digitalocean_database_cluster.mysql.port}/${var.mysql_db_name}?charset=utf8mb4"
  sensitive = true
}
