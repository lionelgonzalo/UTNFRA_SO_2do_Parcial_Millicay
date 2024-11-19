#!/bin/bash
echo FROM nginx:latest > /home/millicay/UTN-FRA_SO_Examenes/202406/docker/Dockerfile
echo COPY index.html /usr/share/nginx/html/index.html >> /home/millicay/UTN-FRA_SO_Examenes/202406/docker/Dockerfile

docker build -t lionelgonzalo/web1-millicay:latest /home/millicay/UTN-FRA_SO_Examenes/202406/docker

docker push lionelgonzalo/web1-millicay:latest

echo "docker run -d -p 8080:80 lionelgonzalp/web1-millicay:latest" > /home/millicay/UTN-FRA_SO_Examenes/202406/docker/run.sh
chmod +x /home/millicay/UTN-FRA_SO_Examenes/202406/docker/run.sh
