module "gke_cluster" {
  source      = "../gke-module/"
  project  = "your_project_id"
  region      = "us-central1"
  cluster_name = "your_cluster_name"
  node_pool_name = "your_node_pool_name"
  node_pool_size = 3
  machine_type = "n1-standard-2"
}