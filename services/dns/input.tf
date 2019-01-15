variable "connections" {
  description = "ips"
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

variable "ssh_key_name" {
    description = "key"
  type = "string"
}

variable "user" {
    description = "user"
  type = "string"
}