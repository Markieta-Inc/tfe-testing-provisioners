resource "null_resource" "python1" {
  provisioner "local-exec" {
    command = "python3 -c 'import ldap3'"
  }
}
