resource "google_compute_instance" "terraform-1" {
  name         = "k3s-terraform-1"
  machine_type = var.instance_type
  boot_disk {
    initialize_params {
      image = var.ubuntu-2204
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_instance" "terraform-2" {
  name         = "k3s-terraform-2"
  machine_type = var.instance_type
  boot_disk {
    initialize_params {
      image = var.ubuntu-2204
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_instance" "terraform-3" {
  name         = "k3s-terraform-3"
  machine_type = var.instance_type
  boot_disk {
    initialize_params {
      image = var.ubuntu-2204
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.default.name

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }

  source_tags = ["web"]
}

resource "google_compute_network" "default" {
  name = "test-network"
}