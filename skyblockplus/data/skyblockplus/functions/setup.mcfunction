#DrBlackError & DrBlackRat & IFlooI
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt
#
#

#DrBlackError
#Nachricht die beim erfolgreichen Reload gesendet wird
#-
#-
tellraw @a[team=Admin] {"text":"Skyblockplus erfolgreich geladen!","color":"yellow"}

#MoreApples
scoreboard objectives add broke_oak_leave minecraft.mined:minecraft.oak_leaves

#wood_bucket
scoreboard objectives add wood_bucket_used minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add composter_placed minecraft.used:minecraft.composter
scoreboard objectives add sieve dummy
