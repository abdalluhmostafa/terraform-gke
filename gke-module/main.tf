resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  location = var.region

  initial_node_count = var.node_pool_size

}

resource "google_container_node_pool" "node_pool" {
  name       = var.node_pool_name
  location   = var.region
  cluster    = google_container_cluster.cluster.name
  node_count = var.node_pool_size

  node_config {
    machine_type = var.machine_type
  }
}