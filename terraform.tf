terraform {
  required_providers {
    google =  {
    source = "hashicorp/google"
    version = ">= 4.10.0"
    }
  }
}

provider "google" {
    project = "eminent-airport-348619"
    region = "us-west1"
}

resource "google_storage_bucket" "terraform_backend_bucket" {
      location = "us-west1"
      name = "terraform-state-ls9buu0thktayjkvq8i4gfe8xtfkzfxwvxhsnef91jw9l"
      project = "eminent-airport-348619"
}

resource "google_storage_bucket" "storage-bucket-tqdl-epfd-efxi-rjxl-disp" {
      name = "storage-bucket-tqdl-epfd-efxi-rjxl-disp"
      location = "us-west1"
      project = "eminent-airport-348619"
}

resource "google_compute_instance" "gce-fdbx" {
      name = "gce-fdbx"
      machine_type = "f1-micro"
      zone = "us-west1-a"
      network_interface {
        network = "default"
      }
      boot_disk {
        initialize_params {
          image = "centos-stream-8-v20220128"
        }
      }
      project = "eminent-airport-348619"
}

resource "google_project_service" "gce-fdbx-service" {
      disable_on_destroy = false
      service = "compute.googleapis.com"
}




