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
  description = "Kubernetes cluster name"
  type        = string
  default     = "vsc-k8s-1-36-3-do-4-fra1"
}

variable "db_cluster_name" {
  description = "Managed PostgreSQL cluster name"
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
