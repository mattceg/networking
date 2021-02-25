//Create VPC

resource "google_compute_network" "vpc"{
    name = "matt-03-vpc"
    auto_create_subnetworks = "false"
}
 
//Create Subnet

resource "google_compute_subnetwork" "subnet"{
     name = "matt-03-subnet"
     ip_cidr_range = "10.10.3.0/24"
     network = google_compute_network.vpc.name
     depends_on = [google_compute_network.vpc]
     region = "us-central1"
}
