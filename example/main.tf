terraform {
  backend "gcs" {
    bucket = "sprints-terraform"
    prefix = "gke"
  }
}