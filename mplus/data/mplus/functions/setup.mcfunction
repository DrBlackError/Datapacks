#LittleRetard
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt

#LittleRetard
#Nachricht die beim erfolgreichen Reload gesendet wird
tellraw @a[team=Admin] {"text":"Magicplus erfolgreich geladen!","color":"yellow"}

#LittleRetard
#Erstellt Dummy Scoreboards
scoreboard objectives add enchanttime dummy
scoreboard objectives add timegoal dummy
scoreboard objectives add eventspawn dummy
scoreboard objectives add timescore dummy
scoreboard objectives add math_numbers_ dummy
scoreboard objectives add mana dummy
scoreboard objectives add manatime dummy
scoreboard objectives add tptime dummy

#LittleRetard
#Erstellt spezifische Scoreboards
scoreboard objectives add sneaktime minecraft.custom:minecraft.sneak_time
scoreboard objectives add sprinttime minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add walktime minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add drop_sneak minecraft.custom:minecraft.sneak_time "drop_sneak"

#LittleRetard
#Setzt scores von Scoreboards zurück
scoreboard players set #tools_random_return math_numbers 0

#LittleRetard
#Erstellt Trigger
#scoreboard objectives add Club trigger

#DrBlackRat
#Shoot
function mplus:shoot/shootload

#IFloooI
#Savecloud
scoreboard objectives add savecloud dummy

#?
#tp_home_set
scoreboard objectives add tp_home_click minecraft.used:minecraft.carrot_on_a_stick
