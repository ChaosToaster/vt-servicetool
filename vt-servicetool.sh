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
echo ""
echo "Mit ENTER könnt Ihr das Menu erneut aufrufen, um zugucken, in welchem ihr euch befindet."
echo ""
echo "--- HAUPTMENÜ ---"
echo ""
    select HM in Betriebssysteme Wartung Tools Beenden
        do        
            case $HM in
                Betriebssysteme)
                    select UM1 in Desktop Server zurück
                        do
                            case $UM1 in
                                Desktop)
                                    select dt1 in LTS LTS2 LTS3 zurück
                                        do
                                            case $dt1 in
                                                LTS)
                                                ;;
                                                LTS2)
                                                ;;
                                                LTS3)
                                                ;;
                                                zurück)
                                                    echo "Zurück zfu Betriebssysteme"; break
                                                ;;
                                            esac
                                        done
                                ;;
                                Server)
                                    select sv1 in LTS LTS2 LTS3 zurück
                                        do
                                            case $sv1 in
                                                LTS)
                                                ;;
                                                LTS2)
                                                ;;
                                                LTS3)
                                                ;;
                                                zurück)
                                                    echo "Zurück zu Betriebssysteme"; echo ""; break
                                                ;;
                                            esac
                                        done
                                ;;
                                zurück)
                                    echo "Zurück ins Hauptmenü"; echo ""; break
                                ;;
                            esac
                        done
                    ;;
                Wartung)
                    echo "Wähle den Akt der Wartung des Systems den du durchführen möchtest aus."
                    ;;
                Tools)
                    echo "Hier findest du alles über die Benutzer-/Gruppensteuerung in Linux."
                    ;;
                Beenden)
                    echo "Das Tool wurde erfolgreich beendet."; break
                    ;;
                *) echo "$REPLY ist keine gelistete Option. Bitte versuche es erneut.";;
            esac
        done