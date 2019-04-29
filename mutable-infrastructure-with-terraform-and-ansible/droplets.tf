resource "digitalocean_droplet" "ubuntu-mutable" {
  image              = "ubuntu-18-04-x64"
  name               = "ubuntu-mutable-2"
  region             = "fra1"
  size               = "s-4vcpu-8gb"
  ssh_keys           = [22987790]

  provisioner "local-exec" {
    command = "echo \"[production]\n${digitalocean_droplet.ubuntu-mutable.ipv4_address}\" > hosts"
  }
}

output "droplet-ip" {
  value = "${digitalocean_droplet.ubuntu-mutable.ipv4_address}"
}