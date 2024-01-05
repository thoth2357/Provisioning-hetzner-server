resource "hcloud_server" "webserver" {
    name        = "web-server"
    server_type = var.server_type
    image       = var.os_image
    location    = var.location
    backups = "false"
    ssh_keys    = [hcloud_ssh_key.primary-ssh-key.id]
    labels = {
        type = "web"
        purpose = "OSI-LMS-SERVER"
    }
    user_data = file("cloud-config.yml")
}
