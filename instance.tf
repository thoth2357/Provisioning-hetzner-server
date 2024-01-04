resource "hcloud_server" "Web" {
    name        = "controller"
    server_type = var.server_type
    image       = var.os_image
    location    = var.location
    backups = "false"
    ssh_keys    = [hcloud_ssh_key.primary-ssh-key.name]
    labels = {
        purpose = "OSI-LMS"
    }
    user_data = file("cloud-config.yml")
}
