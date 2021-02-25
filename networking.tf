//Create VPC

resource "google_compute_network" "vpc"{
    name = "matt-03-vpc"
    auto_create_subnetworks = "false"
}
