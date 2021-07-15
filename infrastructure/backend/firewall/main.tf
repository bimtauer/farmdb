# VPC firewall configuration
# Create a firewall rule that allows internal communication across all protocols:
resource "google_compute_firewall" "firewall-int" {
  name    = "${var.int_name}"
  network = "${var.vpc_name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  source_ranges = ["${var.ip_cidr_range}"]
}

# Create a firewall rule that allows external SSH, ICMP, and HTTPS:
resource "google_compute_firewall" "firewall-ext" {
  name    = "${var.ext_name}"
  network = "${var.vpc_name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "6443"]
  }

  source_ranges = ["0.0.0.0/0"]
}