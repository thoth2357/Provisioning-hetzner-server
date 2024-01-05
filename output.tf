output "web_servers_status" {
    value = "${hcloud_server.webserver.status}"
}

output "web_server_ips" {
    value = "${hcloud_server.webserver.ipv4_address}"
}