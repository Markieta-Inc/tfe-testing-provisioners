terraform {
  backend "remote" {
    hostname = "tfe.markieta.io"
    organization = "prod"

    workspaces {
      name = "vnet-prod"
    }
  }
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello World!"
  }
}
