module "gke_cluster" {
  source         = "../gke-module/"
  project        = "sprints-lab"
  region         = "us-central1-c"
  cluster_name   = "terraform-gke"
  node_pool_name = "dev"
  node_pool_size = 1
  machine_type   = "e2-medium"
  disk_size_gb   = 30
}