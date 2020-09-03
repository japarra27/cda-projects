terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {

  credentials = var.credentials_file

  project = var.project
  region  = var.region
  zone    = var.zone
}

# New resource for the storage bucket our application will use.
resource "google_storage_bucket" "storage_bucket" {
  name     = "gcp-datascience-projects"
  location = var.region

  labels = {
    environment = "pro"
  }

}
