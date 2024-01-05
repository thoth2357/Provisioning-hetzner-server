resource "hcloud_ssh_key" "primary-ssh-key" {
	name = "seyi-ssh-key"
	public_key = file("~/.ssh/OSI-LMS.pub")
}
