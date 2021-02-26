//Create VPC

resource "google_compute_network" "vpc"{
    name = "matt-03-vpc"
    auto_create_subnetworks = "false"
}
 
//Create Subnet

resource "google_compute_subnetwork" "subnet"{
     name = "matt-03-subnet"
     ip_cidr_range = var.subnet_cidr_block
     network = google_compute_network.vpc.name
     depends_on = [google_compute_network.vpc]
     region = var.region
}

//VPC firewall configuration

resource "google_compute_firewall" "firewall"{
  name = "matt-03-firewall"
  network = google_compute_network.vpc.name
  allow{
    protocol = "icmp"
  }
  allow{
    protocol="tcp"
    ports =["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
   
