terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.32.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "instance" {
  source = "./modules/instances"
  
}
module "storage" {
  source = "./modules/storage"
}

terraform {
  backend "gcs" {
    bucket  = "tf-bucket-717523"
    prefix  = "terraform/state"
  }
}

