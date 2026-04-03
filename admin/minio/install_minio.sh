#!/bin/bash

. ../../user0/cnpg-hands-on/commands.sh

print_info "\nInstalling minio...\n"
kubectl apply -f minio.yaml
