output "db_host" {
  value = digitalocean_database_cluster.postgres.host
}

output "db_port" {
  value = digitalocean_database_cluster.postgres.port
}

output "db_user_password" {
  value     = digitalocean_database_user.app.password
  sensitive = true
}

output "db_connection_url" {
  value     = "jdbc:postgresql://${digitalocean_database_cluster.postgres.host}:${digitalocean_database_cluster.postgres.port}/${var.db_name}?sslmode=require"
  sensitive = false
}
