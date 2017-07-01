# churchvideoadmin
Defines needed scripts to administrate the created streaming videos on our contabo server

Inhalt
archivierenX.sh
delkruschtX.sh
deloldarchivX.sh
aufraeumen.sh
eingabetest.sh

Aufruf:

Alle sind mit einem Parameter "irgendingen,  gechingen oder bondorf" aufrufbar 
Ohne diesen Parameter machen sie gar nichts (außer echo )

bash aufraeumen.sh xxx  :

Startet alle 3 anderen Programme und gibt den Parameter xxx (=irgendingen,  gechingen oder bondorf) weiter

Funktionsweise:

Mit dem Parameter passiert fuer die entsprechende Location folgendes

archivieren.sh :

Es werden fehlende mp4 erzeugt
Es wird der älteste File mp4 und flv ins Verzeichnis videoarchiv gemovt (mv), wenn mehr als 10 drin waren

delkruschtX  :

Alle files kleiner als ca. 10 MB werden ins videoarchiv gemovt 

deloldarchivX.sh :

Alle files mit Endung mp4 oder flv werden im videoarchiv geloescht (rm -f),  wenn sie aelter als 100 Tage sind.

aufraeumen.sh :

ruft die drei Programme auf und gibt den Parameter "irgendingen,  gechingen oder bondorf" weiter

eingabetest.sh :

prueft ob als Eingabeparemter ein Wert irgendingen,  gechingen oder bondorf gestzt ist. Wenn nicht kommt Exit 55 und das Programm bricht mit Fehlermeldung ab 

