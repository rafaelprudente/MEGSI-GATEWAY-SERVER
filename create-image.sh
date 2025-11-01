#!/bin/bash

git pull

mvn clean package -DskipTests

arch=$(uname -m)
if [[ "$arch" == "x86_64" ]]; then
  docker buildx build --platform linux/amd64 -t gateway-server:latest .
elif [[ "$arch" == "aarch64" ]]; then
  docker buildx build --platform linux/arm64 -t gateway-server:latest .
else
  echo "Invalid platform: $arch"
fi
