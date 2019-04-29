resource "digitalocean_floating_ip" "coreos" {
  region = "fra1"
}

resource "digitalocean_floating_ip_assignment" "coreos" {
  ip_address = "${digitalocean_floating_ip.coreos.id}"
  droplet_id = "${digitalocean_droplet.coreos.id}"
}

output "droplet-ip" {
  value = "${digitalocean_floating_ip.coreos.ip_address}"
}