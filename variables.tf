variable "hcloud_token" {
    sensitive = true # Requires terraform >= 0.14
    default = "TF_HETZNER_TOKEN"
}

variable "location" {
    default = "ash"
}

variable "server_type" {
    default = "cx11"
}

variable "os_type" {
    default = "ubuntu-20.04"
}

