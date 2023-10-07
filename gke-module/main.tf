resource "google_container_cluster" "cluster" {
  name                     = var.cluster_name
  location                 = var.region
  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection      = false
}

resource "google_container_node_pool" "node_pool" {
  name       = var.node_pool_name
  location   = var.region
  cluster    = google_container_cluster.cluster.name
  node_count = var.node_pool_size

  node_config {
    disk_size_gb = var.disk_size_gb
    machine_type = var.machine_type
  }
}