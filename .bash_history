id
docker ps
sudo systemctl status docker
clear
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cat script_Precondicion.sh 
./script_Precondicion.sh 
source ~/.bashrc
cd .
cd ..
ls
cd ..
ls
sudo visudo
sudo fdisk -l
sudo fdisk /dev/sdd
wipe -a /dev/sdd1
wipefs -a /dev/sdd1
sudo wipefs -a /dev/sdd1
sudo pvcreate /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdd1
sudo pvs
sudo vgs
sudo fdisk -l
sudo f-disk /dev/sdc
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdd2
sudo wipefs -a /dev/sdc1
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdd2
sudo pvcreate /dev/sdc1
sudo pvs
sudo vgextend vg_datos /dev/sdc1
sudo vg_create vg_temp /dev/sdd2
sudo vgcreate vg_temp /dev/sdd2
sudo pvs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo vg_display vg_datos
sudo vgdisplay vg_datos
sudo lvcreate -L +1.49G vg_datos -n lv_workareas
sudo lvcreate -L +512M vg_temp -n lv_swap
sudo lvcreate -L +510M vg_temp -n lv_swap
sudo lvcreate -L +502M vg_temp -n lv_swap
sudo lvs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
ls
pwd
cd ..
ls
cd ..
ls
pwd
sudo mkdir work
ls
cd home/
pwd
cd millicay
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
df -h
free -h
sudo systemctl restart docker
sudo systemctl status docker
cd RTA_Examen_20241116/
ls
vim Punto_A.sh 
cat Punto_A.sh 
sudo chmod 777 Punto_A.sh 
ls
sudo chmod 777 Punto_B.sh 
sudo chmod 777 Punto_C.sh 
sudo chmod 777 Punto_D.sh 
ls
ssh -T git@github.com
sudo ssh -T git@github.com
cd ..
ls
cd RTA_Examen_20241116/
git status
cd ..
cat UTN-FRA_SO_Examenes/202311_Recu/bash_script/Lista_Usuarios.txt 
cd ..
ls
cd ..
ls
cd usr/local/bin
ls
ls -la
sudo vim MillicayAltaUser-Groups.sh
sudo vim MillicayAltaUser-Groups.sh 
sudo cat MillicayAltaUser-Groups.sh 
ls -l
sudo chmod 775 MillicayAltaUser-Groups.sh 
ls -l
./MillicayAltaUser-Groups.sh 
sudo grep R2P_202311_ /etc/shadow
cat /etc/shadow
sudo cat /etc/shadow
sudo vim MillicayAltaUser-Groups.sh 
cd ..
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
cd bash_script/
ls
cat Lista_Usuarios.txt 
sudo /usr/local/bin/MillicayAltaUser-Groups.sh millicay /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo grep millicay /etc/shadow
cd 
ls
cd ..
ls
cd usr/local/bin/
ls
sudo vim MillicayAltaUser-Groups.sh 
sudo cat MillicayAltaUser-Groups.sh 
sudo /usr/local/bin/MillicayAltaUser-Groups.sh millicay
cd ..
ls
cd home/
ls
cd millicay/
sudo /usr/local/bin/MillicayAltaUser-Groups.sh millicay
sudo vim MillicayAltaUser-Groups.sh 
ls
cd ..
ls
cd ..
ls
cd home/millicay/
cd ..
cd /usr/local/bin/
ls
sudo vim MillicayAltaUser-Groups.sh 
sudo /usr/local/bin/MillicayAltaUser-Groups.sh millicay
cat /etc/group
id millicay
cat /etc/passwd
cat /etc/shadow
sudo cat /etc/shadow
cd ..
cd home/
cd millicay/
cd RTA_Examen_20241116/
ls
vim Punto_B.sh 
cd ..
ls
cd UTN-FRA_SO_Examenes/202406
cd docker
ls
cat index.html 
vim index.html 
cat index.html 
vim index.html 
cat index.html 
ls
echo "FROM nginx:latest" > Dockerfile
echo "COPY index.html /usr/share/nginx/html/index.html" >> Dockerfile
cat Dockerfile 
docker build -t lionelgonzalo/web1-millicay:latest .
sudo lvdisplay vg_datos/lv_docker
sudo lvextend -l +100%FREE /dev/vg_datos/lv_docker
lsblk
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc2
sudo vgextend vg_datos /dev/sdc2
sudo lvextend -l +100%FREE /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
sudo lvdisplay /dev/vg_datos/lv_docker
df -h /var/lib/docker
docker build -t lionelgonzalo/web1-millicay:latest .
docker login
docker push lionelgonzalo/web1-millicay:latest
ls -l
docker run -d -p 8080:80 lionelgonzalo/web-millicay:latest
docker ps
sudo systemctl restart docker
sudo systemctl status docker
docker run -d -p 8080:80 lionelgonzalo/web1-millicay:latest
docker ps
ifconfig
echo "docker run -d -p 8080:80 lionelgonzalp/web1-millicay:latest" > /home/millicay/UTN-FRA_SO_Examenes/202406/docker/run.sh
ls
chmod +x run.sh 
ls
vim run.sh 
cd ..
ls
cd RTA_Examen_20241116/
ls
vim Punto_C.sh 
cd ..
ls
cd UTN-FRA_SO_Examenes/
cd 202406
ls
cd ansible/
ls
cd ..
tree ansible/
mkdir -p roles/2do_parcial/templates
tree ansible/
cd roles/
ls
cd 2do_parcial/
ls
ls -l
ls -la
cd ..
ls
cd ansible/
nano roles/2do_parcial/templates/datos_alumno.txt.j2
cd roles/
cd 2do_parcial/
ls
cd ..
cd .
cd ..
ls
cd roles/
ls
cd 2do_parcial/
ls
cd ..
cd ansible/
mkdir -p roles/2do_parcial/templates
nano roles/2do_parcial/templates/datos_alumno.txt.j2
cat roles/2do_parcial/templates/datos_alumno.txt.j2
nano roles/2do_parcial/templates/datos_equipo.txt.j2
cat roles/2do_parcial/templates/datos_equipo.txt.j2
nano roles/2do_parcial/templates/datos_equipo.txt.j2
cat roles/2do_parcial/templates/datos_equipo.txt.j2
nano roles/2do_parcial/tasks/main.yml
vim roles/2do_parcial/tasks/main.yml
cat roles/2do_parcial/tasks/main.yml
vim roles/2do_parcial/defaults/main.yml
vim roles/2do_parcial/templates/datos_alumno.txt.j2
cat roles/2do_parcial/defaults/main.yml
vim inventory/hosts
vim playbook.yml
ansible-playbook playbook.yml
cat roles/2do_parcial/defaults/main.yml
vim roles/2do_parcial/defaults/main.yml
cat roles/2do_parcial/templates/datos_alumno.txt.j2
cat roles/2do_parcial/tasks/main.yml
vim roles/2do_parcial/tasks/main.yml
cat roles/2do_parcial/templates/datos_equipo.txt.j2
tree
vim ansible.cfg 
ansible-playbook playbook.yml
vim playbook.yml
cat playbook.yml
ansible-playbook -i inventory/hosts playbook.yml
sudo visudo
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2do_parcial/defaults/main.yml
vim roles/2do_parcial/tasks/main.yml
vim roles/2do_parcial/vars/main.yml
vim roles/2do_parcial/templates/datos_equipo.txt.j2
ansible-playbook -i inventory/hosts playbook.yml
sudo ls
cd ..
cd RTA_Examen_20241116/
ls
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
cd ..
ls
ssh -T git@github.com
ls -la ~/.ssh/
cat ~/.ssh/authorized_keys
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
ls
git clone git@github.com:lionelgonzalo/UTNFRA_SO_2do_Parcial_Millicay.git
ls
cp -r /home/millicay/UTN-FRA_SO_Examenes/202406 /home/millicay/UTNFRA_SO_2do_Parcial_Millicay/
tree UTNFRA_SO_2do_Parcial_Millicay/
ls
cd RTA_Examen_20241116/
ls
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
vim Punto_D.sh 
cd ..
ls
cp -r /home/millicay/RTA_Examen_20241116 /home/millicay/UTNFRA_SO_2do_Parcial_Millicay/
tree UTNFRA_SO_2do_Parcial_Millicay/
history -a
