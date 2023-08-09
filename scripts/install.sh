#!/bin/sh

set -ex

TERRAFORM_VERSION="1.5.4"
TFCMT_VERSION="v4.4.3"
TFLINT_VERSION="v0.45.0"

wget -q "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
unzip -d /usr/local/bin "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

wget "https://github.com/suzuki-shunsuke/tfcmt/releases/download/${TFCMT_VERSION}/tfcmt_linux_amd64.tar.gz" -P /tmp
tar zxvf /tmp/tfcmt_linux_amd64.tar.gz -C /tmp
mv /tmp/tfcmt /usr/local/bin/tfcmt

# GITHUB_TOKENを使って401が出るので削除
unset GITHUB_TOKEN
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/${TFLINT_VERSION}/install_linux.sh | bash
TFLINT_LOG=debug tflint --init
