module "digital-ocean-nemo" {
  source = "git::https://github.com/poseidon/typhoon//digital-ocean/container-linux/kubernetes?ref=v1.14.1"
  
  providers = {
    digitalocean = "digitalocean.default"
    local = "local.default"
    null = "null.default"
    template = "template.default"
    tls = "tls.default"
  }

  # Digital Ocean
  cluster_name = "nemo"
  region       = "fra1"
  dns_zone     = "digital-ocean.p4a.me"

  # configuration
  ssh_fingerprints = ["d7:9d:79:ae:56:32:73:79:95:88:e3:a2:ab:5d:45:e7"]
  asset_dir        = "/home/user/.secrets/clusters/nemo"
  
  # optional
  worker_count = 10
  worker_type  = "s-1vcpu-1gb"
}

resource "digitalocean_domain" "zone-for-clusters" {
  name       = "digital-ocean.p4a.me"
  ip_address = "8.8.8.8"
}