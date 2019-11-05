#! /bin/bash
# Das Programm ruft die Unterprogramme zum Aufraeumen und Archivieren auf
# Schleife über alle mandanten
wo="/home/rarents"
while read line
do
   echo "jetzt kommt der Mandant  $line"
   bash $wo"/aufraeumen.sh" $line
done < $wo"/mandanten.txt"
