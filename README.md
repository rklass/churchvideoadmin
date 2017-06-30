# churchvideoadmin
Defines needed scripts to administrate the created streaming videos on our contabo server

Inhalt
archivierenX.sh
delkruschtX.sh
deloldfilesX.sh
aufraeumen.sh

Aufruf
Alle sind mit einem Parameter "irgendingen,  gechingen oder bondorf" aufrufbar 
Ohne diesen Parameter machen sie gar nichts
aufraeumen.sh startet alle 3 anderen Programme und gibt den Parameter weiter


Funktionsweise:
Mit dem Parameter passiert fuer die entsprechende Location folgendes
archivieren.sh
Es werden fehlende mp4 erzeugt
Es wird der älteste File mp4 und flv ins Verzeichnis videoarchiv gemovt (mv), wenn mehr als 10 drin waren

delkruschtX 
Alle files kleiner als ca. 10 MB werden ins videoarchiv gemovt 

deloldfilesX.sh
Alle files mit Endung mp4 oder flv werden im videoarchiv geloescht (rm -f),  wenn sie aelter als 100 Tage sind.

aufraeumen.sh
ruft die drei Programme auf und gibt den Parameter "irgendingen,  gechingen oder bondorf" weiter


