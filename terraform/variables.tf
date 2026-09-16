variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "fra1"
}

variable "cluster_name" {
  description = "Kubernetes cluster TEKO-VSC"
  type        = string
  default     = "vsc-k8s-fra1"
}

variable "db_cluster_name" {
  description = "Managed PostgreSQL TEKO-VSC"
  type        = string
  default     = "user-mgmt-postgres"
}

variable "db_name" {
  description = "Application database name"
  type        = string
  default     = "userdb"
}

variable "db_user" {
  description = "Application database user"
  type        = string
  default     = "appuser"
}

variable "mysql_cluster_name" {
  description = "Managed MySQL TEKO-VSC"
  type        = string
  default     = "module-service-mysql"
}

variable "mysql_db_name" {
  description = "Managed MySQL TEKO-VSC"
  type        = string
  default     = "module_service"
}

variable "mysql_user" {
  description = "MySQL user for module_service"
  type        = string
  default     = "module_service"
}
