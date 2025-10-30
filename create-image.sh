#!/bin/bash

mvn clean package -DskipTests

docker buildx build -t gateway-server:latest .