variable "count" {
  type = "string"
}

variable "connections" {
  type = "list"
}

variable "ssh_key_name" {
  type = "string"
}

variable "user" {
  type = "string"
}

variable "hostname_format" {
  description = "Hostname format"
  type = "string"
}

variable "domain" {
  description = "Donain"
  type = "string"
}

variable "letsencrypt_mode" {
  type = "string"
}

variable "email" {
  type = "string"
}

variable "rancher_cluster" {
  type = "string"
}

variable "rancher_password" {
  type = "string"
}

variable "apt_install_master" {
  type = "list"
}

variable "zeit_token" {
  description = "Zeit.co Token for administration of dns services"
  type = "string"
}

variable "do_domain" {
  description = "do domain name for servers"
  type = "string"
}

variable "rancher_sub_domain" {
  description = "subdomain"
  type = "string"
}

variable "hostnames" {
  description = "hostnames"
  type = "list"
}