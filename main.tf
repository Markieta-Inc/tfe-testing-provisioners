terraform {
  backend "remote" {
    hostname = "tfe.markieta.io"
    organization = "dev"

    workspaces {
      name = "vnet-nonprod"
    }
  }
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello World!"
  }
}
