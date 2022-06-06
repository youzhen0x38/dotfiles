#!/bin/bash
HOSTS=($(egrep ^Host ~/.ssh/config | awk '{print $2}'))
INDEX_HOSTS=($(egrep ^Host ~/.ssh/config | awk '{print NR-1 " " $2}'))

 
CHOICE=$(whiptail 3>&2 2>&1 1>&3 --notags --title "SSH Selector" --menu "Make a choice" 20 70 10 ${INDEX_HOSTS[@]})

if expr "$CHOICE" : "[0-9]*$" >&/dev/null;then
  HOST=${HOSTS[$CHOICE]}

  PASSWORD=`awk "/^Host $HOST/,/^$/" ~/.ssh/config | grep Password | awk '{print $2}'`
  
  if [[ -z "$PASSWORD" ]]; then
    ssh $HOST
  else
    sshpass -p $PASSWORD ssh $HOST
  fi

else
  echo "bye."
fi

