resource "google_compute_network" "vpc" {
  name                            = "main"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  delete_default_routes_on_create = true

  depends_on = [var.api_dependency]
}

# removed {
#   from = google_compute_network.vpc

#   lifecycle {
#     destroy = true
#   }
# }

# Remove this route to make the VPC fully private.check
# You need this route for the NAT gateway.
resource "google_compute_route" "default_route" {
  name             = "default-route"
  dest_range       = "0.0.0.0/0"
  network          = google_compute_network.vpc.name
  next_hop_gateway = "default-internet-gateway"
}

# removed {
#   from = google_compute_route.default_route

#   lifecycle {
#     destroy = true
#   }
# }
