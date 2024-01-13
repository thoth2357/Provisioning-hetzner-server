resource "hcloud_server" "webserver" {
    name        = "OSI-Dev-Server"
    server_type = var.server_type
    image       = var.os_image
    location    = var.location
    backups = "false"
    firewall_ids = [hcloud_firewall.default.id, hcloud_firewall.default-egress.id]
    ssh_keys    = [hcloud_ssh_key.primary-ssh-key.id, hcloud_ssh_key.secondary-ssh-key.id, hcloud_ssh_key.secondary2-ssh-key]
    labels = {
        type = "web"
        purpose = "OSI-Dev-Server"
    }
    user_data = file("cloud-config.yml")
}