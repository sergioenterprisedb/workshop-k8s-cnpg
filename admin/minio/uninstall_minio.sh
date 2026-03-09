#!/bin/bash

print_info "\nUnnstalling minio...\n"
kubectl delete -f minio.yaml
