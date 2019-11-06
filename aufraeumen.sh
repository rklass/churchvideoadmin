#! /bin/bash
# Das Programm ruft die Unterprogramme zum Aufraeumen und Archivieren auf
echo "-------------------------------------------------------"
echo "A:   Programm aufraeumen.sh ist gestartet"
echo "     Paramter 1 = " $1 " (aus Programm aufraeumen.sh)"
echo " "
echo " "
echo "-------------------------------------------------------"
echo "pruefen, vieviele Files im videoarchiv sind"
anzf=$(find /video_recordings/$1/ -maxdepth 1 -type f | wc -l)
echo "Anzahle Files = "  $anzf
if [ $anzf -lt 7 ]
then
   echo "Nichts machen, weil nur $anzf Files drin sind"
   exit
fi
echo "Es geht weiter"
echo "-------------------------------------------------------"
echo "B: Jetzt startet/home/rarents/delkruschtX.sh $1"
bash /home/rarents/delkruschtX.sh $1
echo  "delkruschtX.sh ist mit Parameter=" $1 " gelaufen. Exit=" $?
echo " "
echo " "
sleep 3
echo "-------------------------------------------------------"
echo "C: Jetzt startet /home/rarents/deloldarchivX.sh $1"
bash /home/rarents/deloldarchivX.sh $1
echo  "deloldarchivX.sh ist mit Parameter=" $1 " gelaufen. Exit=" $?
echo " "
echo " "
sleep 5
echo "-------------------------------------------------------"
echo "D: Jetzt startet /home/rarents/archivierenX.sh $1"
bash /home/rarents/archivierenX.sh $1
echo  "archivierenX ist mit Parameter=" $1 " gelaufen. Exit=" $?
