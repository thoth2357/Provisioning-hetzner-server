resource "hcloud_ssh_key" "primary-ssh-key" {
	name = "seyi-ssh-key"
	public_key = file("/path-to-public-key")
}

resource "hcloud_ssh_key" "secondary-ssh-key" {
	name = "secondary-ssh-key"
	public_key = file("/path-to-public-key")
}

resource "hcloud_ssh_key" "secondary2-ssh-key" {
	name = "secondary2-ssh-key"
	public_key = file("/path-to-public-key")
}