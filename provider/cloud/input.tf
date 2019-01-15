variable "do_token" {
  description = "do Cloud Token"
  type = "string"
}
variable "do_group_name" {
  description = "DO user group name on server"
  type = "string"
  default = "docker"
}

variable "do_user_name" {
  description = "do user name on server"
  type = "string"
}

variable "do_ip_access" {
  description = "do IP address which is allowed to access server with ssh"
  type = "string"
}

variable "do_email" {
  description = "do eMail of user to inform about server setup"
  type = "string"
}

variable "do_ssh_key_name" {
  description = "do SSH Key Name for Server Logins ~/.ssh/<do_SSH_KEY_NAME>.pub without path without file type ending"
  type = "string"
}

variable "do_domain" {
  description = "do domain name for servers"
  type = "string"
}

variable "do_server_count" {
  description = "do number of server to provision"
  type = "string"
}

variable "do_server_type" {
  description = "do type of server 'cx11', 'cx21',..."
  type = "string"
}

variable "do_datacenter" {
  description = "do datacenter name 'fsn1-dc8'=Falkenstein, 'nbg1-dc3'=Nuremberg, 'hel1-dc2'=Helsinki"
  type = "string"
}

variable "do_hostname_format" {
  description = "do server name format"
  type = "string"
}

variable "do_image" {
  description = "do operating system image 'ubuntu-16.04', ..."
  type    = "string"
}

variable "do_keep_disk" {
  description = "do keep disk size, to enable up- and downgrades 'true', 'false'"
  type    = "string"
}

variable "do_backup_window" {
  description = "do backup window in UTC e.g. '22-02'"
  type    = "string"
}

variable "do_iso_image" {
  description = "do iso image name to mount"
  type    = "string"
}

variable "do_rescue" {
  description = "do Enable and boot in to the specified rescue system 'linux64'"
  type = "string"
}

variable "do_apt_install_packages" {
  description = "do applications to provision with apt-get install"
  type    = "list"
}

variable "zeit_token" {
  description = "Zeit.co Token for administration of dns services"
  type = "string"
}
variable "do_region" {
  description = "DigitalOcean Region"
  type = "string"
}
variable "do_droplet_size" {
  description = "The size droplets to use for the manager and worker nodes"
  default = "512mb"
}

variable "do_hostnames" {
  description = "The size droplets to use for the manager and worker nodes"
  type = "list"
}