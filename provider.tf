provider "google" {
  credentials = file("eloquent-ratio-376913-c27c9e0ba9de.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}