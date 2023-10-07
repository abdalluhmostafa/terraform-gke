module "gke_cluster" {
  source      = "../gke-module/"
  project  = "nana-sre"
  region      = "us-central1"
  cluster_name = "mygke"
  node_pool_name = "my-nodepool"
  node_pool_size = 2
  machine_type = "n1-standard-2"
}