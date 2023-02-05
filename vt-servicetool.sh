#!/bin/bash
#-------------------------------------------------------------------------------------
# Venturetec Linux Service Tool
#_____________________________________________________________________________________
# Erstellt von: Tim Peters
# Für unsere kleinen Click-Ubuntu Linux-Legasteniker
# 
# Dieses Tool ist für die komplette Verwaltung von Linuxsystemen ohne großen Aufwand :)
#-------------------------------------------------------------------------------------

PS3='Willkommen im Hauptmenü. Wähle eine Kategorie: '
    select HM in Betriebssysteme Wartung Tools Beenden
        do
            case $HM in
                Betriebssysteme)
                    echo "Wähle dein zu installierendes System aus."
                    ;;
                Wartung)
                    echo "Wähle den Akt der Wartung des Systems den du durchführen möchtest aus."
                    ;;
                Tools)
                    echo "Hier findest du alles über die Benutzer-/Gruppensteuerung in Linux."
                    ;;
                Beenden)
                    break
                    ;;
                *) echo "ungültige Kategorie $REPLY. Bitte versuche es erneut!";;
            esac
        done;;