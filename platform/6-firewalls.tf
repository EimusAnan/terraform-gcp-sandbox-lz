# resource "google_compute_firewall" "allow_iap_ssh" {
#  name    = "allow-iap-ssh"
#  network = google_compute_network.vpc.name

#  allow {
#    protocol = "tcp"
#    ports    = ["22"]
#  }

#  source_ranges = ["35.235.240.0/20"]
#}

removed {
  from = google_compute_firewall.allow_iap_ssh

  lifecycle {
    destroy = true # Set to true if you actually want it deleted
  }
}
