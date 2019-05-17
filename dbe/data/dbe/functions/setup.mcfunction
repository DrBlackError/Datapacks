#DrBlackError
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt
#
#

#DrBlackError
#Nachricht die beim erfolgreichen Reload gesendet wird
#-
#-
tellraw @a[team=Admin] {"text":"dbe erfolgreich geladen!","color":"yellow"}
tellraw @a {"text":"dbe erfolgreich geladen!","color":"yellow"}
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1 1


scoreboard objectives add cmd trigger "cmd"
scoreboard players enable @a cmd
scoreboard objectives add heal trigger
scoreboard players enable @a heal
scoreboard objectives add xpos dummy
scoreboard objectives add ypos dummy
scoreboard objectives add zpos dummy
#Getpos
#execute as @a run title @a actionbar ["",{"text":"x: "},{"score":{"name":"@s","objective":"xpos"}},{"text":" y: "},{"score":{"name":"@s","objective":"ypos"}},{"text":" z: "},{"score":{"name":"@s ","objective":"zpos"}}]
scoreboard objectives add home trigger
scoreboard players enable @a home
scoreboard objectives add sethome trigger
scoreboard players enable @a sethome
scoreboard objectives add xhome dummy
scoreboard objectives add yhome dummy
scoreboard objectives add zhome dummy
scoreboard objectives add help trigger
scoreboard players enable @a help
scoreboard objectives add debugon trigger
scoreboard players enable @a[tag=op] debugon
scoreboard objectives add debugoff trigger
scoreboard players enable @a[tag=op] debugoff
scoreboard objectives add sectick dummy
scoreboard objectives add sec dummy
