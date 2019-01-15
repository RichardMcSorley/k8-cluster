output "hostnames" {
  value = ["${digitalocean_droplet.host.*.name}"]
}

output "public_ips" {
  value = ["${digitalocean_droplet.host.*.ipv4_address}"]
}

output "private_ips" {
  value = ["${digitalocean_droplet.host.*.ipv4_address}"]
}

output "private_network_interface" {
  value = "eth0"
}