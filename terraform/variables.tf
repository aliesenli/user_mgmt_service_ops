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
