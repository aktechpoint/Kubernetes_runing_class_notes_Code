#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing required packages..."
sudo apt install -y curl unzip apt-transport-https ca-certificates gnupg lsb-release

# -----------------------------
# Install kubectl
# -----------------------------
echo "Installing kubectl..."

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

rm kubectl

echo "kubectl installed successfully"
kubectl version --client

# -----------------------------
# Install eksctl
# -----------------------------
echo "Installing eksctl..."

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" -o eksctl.tar.gz

tar -xzf eksctl.tar.gz

sudo mv eksctl /usr/local/bin

rm eksctl.tar.gz

echo "eksctl installed successfully"
eksctl version

echo "Installation Completed Successfully!"