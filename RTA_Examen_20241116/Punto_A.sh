#!/bin/bash
sudo fdisk /dev/sdd
n
p
1

+5M
t
8e
wq
sudo fdisk /dev/sdc
n
p
1

+1.5G
t
8e
wq
sudo fdisk /dev/sdd
n
p
2

+512M
t
2
82
wq
sudo wipefs -a /dev/sdd1
sudo wipefs -a /dev/sdd2
sudo wipefs -a /dev/sdc1
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdd2
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1
sudo vgextend vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd2
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -L +1.50G vg_datos -n lv_workareas
sudo lvcreate -L +512M vg_temp -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /den/mapper/vg_temp-lv_swap
sudo systemctl restart docker
sudo systemctl status docker
