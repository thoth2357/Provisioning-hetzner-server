resource "hcloud_server" "webserver" {
    name        = "webServer"                 # Sets the name of the server to "webServer"
    server_type = var.server_type              # Uses a variable for the server type
    image       = var.os_image                 # Uses a variable for the operating system image
    location    = var.location                 # Uses a variable for the server location
    backups     = "false"                      # Disables backups for the server
    firewall_ids = []                          # Does not associate any firewalls with the server
    ssh_keys    = [
        hcloud_ssh_key.primary-ssh-key.id,    # Associates the server with the primary SSH key
        hcloud_ssh_key.secondary-ssh-key.id,  # Associates the server with the secondary SSH key
        hcloud_ssh_key.secondary2-ssh-key.id  # Associates the server with another secondary SSH key
    ]
    labels = {
        type    = "web"                        # Sets a label "type" to "web"
        purpose = "Web-Server"                 # Sets a label "purpose" to "Web-Server"
    }
    user_data = file("cloud-config.yml")       # Specifies the user data using the content of "cloud-config.yml" file
}
