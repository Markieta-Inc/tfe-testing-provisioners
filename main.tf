terraform {
  backend "remote" {
    hostname = "tfe.markieta.io"
    organization = "nonprod"

    workspaces {
      name = "vm-nonprod"
    }
  }
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello World!"
  }
}
