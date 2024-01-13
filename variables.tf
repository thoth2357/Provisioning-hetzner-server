variable "hcloud_token" {
    sensitive = true # Requires terraform >= 0.14
    default = "TF_HETZNER_TOKEN"
}

variable "location" {
    default = "ash"
}

variable "server_type" {
    default = "cpx11"
}

variable "os_image" {
    default = "ubuntu-22.04"
}

