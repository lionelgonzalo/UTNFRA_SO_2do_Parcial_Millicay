#PASS=$1
#ANT_IFS=$IFS
#IFS=$'\n'

#for i in $(cat "$LISTA" | awk -F ',' '{print $1" "$2" "$3}' | grep -v '^#'); do
#    USUARIO=$(echo $i | awk '{print $1}')
#    GRUPO=$(echo $i | awk '{print $2}')
#    HOME_USR=$(echo $i | awk '{print $3}')
#    CONTRA=$(sudo grep "^$PASS:" /etc/shadow | awk -F: '{print $2}')
#    sudo groupadd "$GRUPO"
#    sudo useradd -m -d "$HOME_USR" -s /bin/bash -p "$CONTRA" -G "$GRUPO" "$USUARIO"
#done

#IFS=$ANT_IFS

#!/bin/bash

sudo /usr/local/bin/MillicayAltaUser-Groups.sh millicay


