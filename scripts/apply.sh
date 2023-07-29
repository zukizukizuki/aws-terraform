#!/bin/sh
set -ex
terraform init -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=zukkie-terraform-state"
terraform apply -auto-approve -no-color