#DrBlackError
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt
#
#

#DrBlackError
#Nachricht die beim erfolgreichen Reload gesendet wird
#-
#-
tellraw @a[team=Admin] {"text":"dbe erfolgreich geladen!","color":"yellow"}

scoreboard players enable @a tspawn
