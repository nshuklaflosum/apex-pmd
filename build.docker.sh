#!/bin/bash

set -e

VERSION_NUMBER=$(npm pkg get version | sed 's/"//g')

echo "Building Docker version flosumhub/apex-pmd:${VERSION_NUMBER}"

sudo docker buildx build -t flosumhub/apex-pmd:"${VERSION_NUMBER}" --platform linux/amd64,linux/arm64,linux/riscv64,linux/ppc64le,linux/386,linux/arm/v7,linux/arm/v6,linux/s390x --push .
echo "Created Docker version flosumhub/apex-pmd:${VERSION_NUMBER}"
