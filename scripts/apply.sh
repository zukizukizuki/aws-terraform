#!/bin/sh
set -ex
terraform init -var USERID=${userID} -input=false -no-color -backend-config="key=terraform.tfstate" -backend-config="bucket=zukkie-terraform-state"
terraform validate -no-color
tfcmt apply -- terraform apply -auto-approve -no-color -var USERID=${userID}
