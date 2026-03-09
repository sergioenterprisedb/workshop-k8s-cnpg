#!/bin/bash

. ../config.sh
. ../../user0/cnpg-hands-on/commands.sh


# Uninstall prometheus
print_info "\nUninstalling prometheus...\n"
kubectl delete crd prometheuses.monitoring.coreos.com
kubectl delete crd prometheusagents.monitoring.coreos.com
kubectl delete crd prometheusrules.monitoring.coreos.com

print_info "\nUninstalling Grafana service...\n"
kubectl delete -f grafana.yaml
