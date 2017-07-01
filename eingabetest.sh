#!/bin/bash
#Sicherheitsausgang
if [ "$1" == "irgendingen" ] || [ "$1" == "gechingen" ] || [ "$1" == "bondorf" ]
 then
  #Parameter stimmt
  echo  "Parameter " $1 "ist ok -> weiter"
 else
    echo "Parameter " $1 "ist nicht erlaubt -> Ende"
    exit 55  #Notausgang
 fi

