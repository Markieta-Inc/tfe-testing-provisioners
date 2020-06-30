terraform {
  backend "remote" {
    hostname = "tfe.markieta.io"
    organization = "Arctiq-Machines"
  }
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello World!"
  }
}
