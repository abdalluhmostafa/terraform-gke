variable "project" {
  description = "Google Cloud project ID"
}

variable "region" {
  description = "GKE cluster region"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "GKE cluster name"
}

variable "node_pool_name" {
  description = "GKE node pool name"
}

variable "node_pool_size" {
  description = "Number of nodes in the node pool"
  default     = 3
}

variable "machine_type" {
  description = "GKE node machine type"
  default     = "n1-standard-2"
}

variable "disk_size_gb" {
  description = "Node pool machine disk size"
  default     = 30
}