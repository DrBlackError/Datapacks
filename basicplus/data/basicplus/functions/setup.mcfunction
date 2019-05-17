#DrBlackError
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt
#
#

#DrBlackError
#Nachricht die beim erfolgreichen Reload gesendet wird
#-
#-
tellraw @a[team=Admin] {"text":"Basicplus erfolgreich geladen!","color":"yellow"}
execute as @a[team=Admin] at @s run playsound minecraft:entity.arrow.hit_player ambient @a

#DrBlackError
#Added Scoreboards
#
#
scoreboard objectives add leben health "Leben"
scoreboard objectives add leave minecraft.custom:minecraft.leave_game "Leave"
scoreboard objectives add timer dummy
scoreboard objectives add sleeping dummy
scoreboard objectives add exact minecraft.used:minecraft.carrot_on_a_stick

#DrBlackError
#Setzt Scorboard Displays
#
#
scoreboard objectives setdisplay belowName leben
#scoreboard objectives setdisplay list xyz
#scoreboard objectives setdisplay sidebar xyz

#custom Customcrafting
scoreboard objectives add barrel_placed minecraft.used:minecraft.barrel

say Blubb
