resource "google_compute_instance" "default" {
  name = "new-terraform-instance"
  machine_type = "f1-micro"
  zone         = "europe-central2"
  boot_disk {
  initialize_params {
    image = "ubuntu-1804-bionic-v20200129a"
  }
}
 network_interface {
   network = "default"
 }

 metadata = {
  sshKeys = file("~/.ssh/id_rsa.pub")
 }
}