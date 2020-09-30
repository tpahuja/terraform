provider "google" {

  project     = "crested-idiom-288717"
  region      = "us-central1"
  zone        = "us-central1-a"
}


resource "google_compute_network" "vpc_network" {
  name = "terraform-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "subnet1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.name
  }
