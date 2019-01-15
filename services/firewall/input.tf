variable "user" {
  description = "DigitalOcean user name on server"
  type = "string"
}

variable "ip_access" {
  description = "DigitalOcean IP address which is allowed to access server with ssh"
  type = "string"
}

variable "ssh_key_name" {
  description = "DigitalOcean SSH Key Name for Server Logins ~/.ssh/<DigitalOcean_SSH_KEY_NAME>.pub without path without file type ending"
  type = "string"
}

variable "count" {
  description = "DigitalOcean number of server to provision"
  type = "string"
}

variable "connections" {
  description = "ips"
  type = "list"
}

