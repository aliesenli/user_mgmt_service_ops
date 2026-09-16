resource "digitalocean_database_cluster" "postgres" {
  name       = var.db_cluster_name
  engine     = "pg"
  version    = "16"
  size       = "db-s-1vcpu-1gb"
  region     = var.region
  node_count = 1
}

resource "digitalocean_database_db" "app" {
  cluster_id = digitalocean_database_cluster.postgres.id
  name       = var.db_name
}

resource "digitalocean_database_user" "app" {
  cluster_id = digitalocean_database_cluster.postgres.id
  name       = var.db_user
}

resource "digitalocean_database_cluster" "mysql" {
  name       = var.mysql_cluster_name
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = var.region
  node_count = 1
}

resource "digitalocean_database_db" "module_app" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name       = var.mysql_db_name
}

resource "digitalocean_database_user" "module_app" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name       = var.mysql_user
}
