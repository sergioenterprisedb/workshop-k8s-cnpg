

# Description
This workshop demo needs an AWS EC2 instance with this configuration:
- CPUs: Minimum 8 cpu's
- RAM: 32GB
- Storage:
  - 4 disks with this configuration:
  - Type: gp3
  - IOPS: 6000
  - Throughput: 300
- lsblk:
  - xvda: 50GB
  - xvdb: 50GB
  - xvdc: 50GB
  - xvdd: 50GB

## Security groups
To be able to access to the EC2 VM, Grafana and Minio, it is necessary to create some security group rules:
- SSH
  - Type: SSH
  - Port: 22
- Grafana
  - Protocol: Custom TCP
  - Port: 3010
- Minio
  - Type: Custom TCP
  - Port: 9010


# Installation
Install main components:
- Docker
- k3d
- kubectl

And other software:
-  bat
- htop
- cmclt
- rich

With ec2-user:
```
install_EC2.sh
```
## Install minio
Execute:
```
cd ~/workshop-k8s/admin/minio
install_minio.sh
```
After installation, you can access to MinIO with:
- User: `admin`
- Password: `password`
- URL: `http://<ec2_public_ip>:9010/`

## Install Prometheus and Grafana
Execute:
```
cd ~/workshop-k8s/admin/prometheus
./install_prometheus.sh
```
After installation, you can access to MinIO with:
- User: `admin`
- Password: `prom-operator`
- URL: http://<ec2_public_ip>:3010/login

Install CloudNativePG dashboard:
- In Grafana, go to Dashboard -> New -> Import
- Import this [CloudnativePG Grafana dashboard file](https://github.com/cloudnative-pg/grafana-dashboards/blob/main/charts/cluster/grafana-dashboard.json)
- Load dashboard

A new dashboard CloudNativePG is loaded

## Install Shellinabox
Shell In A Box implements a web server that can export arbitrary command line tools to a web based terminal emulator. This emulator is accessible to any JavaScript and CSS enabled web browser and does not require any additional browser plugins.
```
./install_shellinabox.sh
```

## Install linux users
By default, 10 users are created in the Linux VM. The file `config.sh` contain the configuration:
```
cd ~/workshop-k8s/admin/
./create_linux_users.sh
```


