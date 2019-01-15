variable "do_token" {
  description = "DigitalOcean Cloud Token"
  type = "string"
}

variable "do_user_name" {
  description = "DigitalOcean user name for the server, which will be created"
  type = "string"
}

variable "do_ip_access" {
  description = "DigitalOcean IP address which is allowed to access server with ssh"
  type = "string"
}

variable "do_email" {
  description = "DigitalOcean eMail of user to inform about server setup"
  type = "string"
}

variable "do_ssh_key_name" {
  description = "DigitalOcean SSH Key Name for Server Logins ~/.ssh/<do_SSH_KEY_NAME>.pub without path without file type ending"
  type = "string"
}

variable "do_domain" {
  description = "DigitalOcean domain name for servers"
  type = "string"
}

variable "do_server_count" {
  description = "DigitalOcean number of server to provision"
  type = "string"
}

variable "do_server_type" {
  description = "DigitalOcean type of server 'cx11', 'cx21',..."
  type = "string"
}

variable "do_datacenter" {
  description = "DigitalOcean datacenter name 'fsn1-dc8'=Falkenstein, 'nbg1-dc3'=Nuremberg, 'hel1-dc2'=Helsinki"
  type = "string"
}


variable "do_image" {
  description = "DigitalOcean operating system image 'ubuntu-16.04', ..."
  type    = "string"
}

variable "do_keep_disk" {
  description = "DigitalOcean keep disk size, to enable up- and downgrades 'true', 'false'"
  type    = "string"
}

variable "do_backup_window" {
  description = "DigitalOcean backup window in UTC e.g. '22-02'"
  type    = "string"
}

variable "do_iso_image" {
  description = "DigitalOcean iso image name to mount"
  type    = "string"
}

variable "do_rescue" {
  description = "DigitalOcean Enable and boot in to the specified rescue system 'linux64'"
  type = "string"
}

variable "do_apt_install_packages" {
  description = "DigitalOcean applications to provision with apt-get install"
  type    = "list"
}

variable "do_apt_install_master" {
  description = "DigitalOcean applications to provision additionally on master"
  type = "list"
}

variable "zeit_token" {
  description = "Zeit.co Token for administration of dns services"
  type = "string"
}

variable "letsencrypt_mode" {
  description = "Letsencrypt mode: productive='' testmode='--staging', use first --staging to not exceed rate limits during tests"
  type = "string"
}

variable "rancher_cluster" {
  description = "Rancher Cluster Name"
  type = "string"
}

variable "rancher_password" {
  description = "Rancher Cluster Password"
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
variable "do_hostname_format" {
  description = "DigitalOcean hostname"
  type    = "string"
}

variable "rancher_sub_domain" {
    description = "Rancher hostname"
  type    = "string"
}

variable "do_hostnames" {
  description = "set of cool hostnames"
  type = "list"
}
