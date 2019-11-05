#!/bin/bash
#Sicherheitsausgang
wo="/home/rarents"
if grep -qw "$1" "$wo/mandanten.txt"
 then
  #Parameter stimmt
  echo  "Parameter " $1 "ist ok -> weiter"
 else
    echo "Parameter " $1 "ist nicht erlaubt -> Ende"
    exit 55  #Notausgang
 fi

