resource "hcloud_ssh_key" "primary-ssh-key" {
	name = "seyi-ssh-key"
	public_key = file("~/.ssh/OSI-LMS.pub")
}

resource "hcloud_ssh_key" "secondary-ssh-key" {
	name = "mog-ssh-key"
	public_key = file("~/.ssh/mog_cyberpower_key.pub")
}