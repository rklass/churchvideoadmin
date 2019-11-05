# churchvideoadmin
Defines needed scripts to administrate the created streaming videos on our contabo server

Inhalt
- archivierenX.sh
- delkruschtX.sh
- deloldarchivX.sh
- aufraeumen.sh
- eingabetest.sh
- START.sh
- mandanten.txt

Aufruf:
- Alle Programme *X.sh sind mit einem Parameter xxx =  irgendingen,  gechingen oder ..... aufrufbar.
- Ohne diesen Parameter (oder einen anderen) machen sie gar nichts (außer echo )
- START.sh: ruft aufraeumen.sh xxx  fuer alle Mandanten xxx auf, die in mandanten.txt stehen
- Wichtig: alle scripte stehen in /home/rarents

mandanten.txt
- ist eine Liste, in jeder Zeile steht der Name eines Mandanten (immer klein geschrieben, Bsp. gechingen)

bash aufraeumen.sh xxx 
- Startet alle 3 anderen Programme und gibt den Parameter xxx (=irgendingen,  gechingen oder bondorf) weiter

Funktionsweise:
- Mit dem Parameter passiert fuer die entsprechende Location folgendes

archivieren.sh xxx
- Es werden fehlende mp4 erzeugt bei den flvs, wo es noch keinen gab
- Es wird der älteste File mp4 und flv ins Verzeichnis videoarchiv gemovt (mv), wenn mehr als 10 drin waren

delkruschtX.sh xxx
- Alle files kleiner als ca. 10 MB werden ins videoarchiv gemovt 

deloldarchivX.sh xxx
- Alle files mit Endung mp4 oder flv werden im videoarchiv geloescht (rm -f),  wenn sie aelter als 100 Tage sind.

aufraeumen.sh xxx
- Ruft die drei Programme auf und gibt den Parameter "irgendingen,  gechingen oder bondorf" weiter

eingabetest.sh xxx
- Prueft ob als Eingabeparemter ein Wert einer Zeile in mandanten.txt steht (z.B. irgendingen oder ...) 
- Wenn nicht kommt Exit 55 und das Programm bricht mit Fehlermeldung ab 
