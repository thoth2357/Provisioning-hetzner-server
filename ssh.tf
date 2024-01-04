resource "tls_private_key" "generic-ssh-key" {
	algorithm = "RSA"
	rsa_bits  = 4096
}

resource "hcloud_ssh_key" "primary-ssh-key" {
	name = "primary-ssh-key"
	public_key = tls_private_key.generic-ssh-key.public_key_openssh
}
