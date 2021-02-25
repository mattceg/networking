output "matts-vpc"{
  value = google_compute_network.vpc.id
}
output "matts-subnet"{
 value = google_compute_subnetwork.subnet.id
}

output "matts-firewall" {
   value = google_compute_firewall.firewall.id
}
