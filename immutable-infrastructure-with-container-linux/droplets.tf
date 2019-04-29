resource "digitalocean_droplet" "coreos" {
  image              = "coreos-stable"
  name               = "coreos"
  region             = "fra1"
  size               = "s-4vcpu-8gb"
  ssh_keys           = [22987790]
  user_data          = "${data.template_file.cloud-config.rendered}"
  ipv6               = true
  private_networking = true
}
