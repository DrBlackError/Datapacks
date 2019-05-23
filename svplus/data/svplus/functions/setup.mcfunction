#DrBlackError
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt

#DrBlackError
#Nachricht die beim erfolgreichen Reload gesendet wird
tellraw @a[team=Admin] {"text":"Svplus erfolgreich geladen!","color":"yellow"}

#DrBlackError
#Erstellt Dummy Scoreboards
scoreboard objectives add mana dummy
scoreboard objectives add manatime dummy
scoreboard objectives add gameplayer-d dummy
scoreboard objectives add uuid dummy

#Flo
#Cold
#scoreboard objectives setdisplay sidebar timer
scoreboard objectives add temp_counter dummy "Temperatur Zähler"
scoreboard objectives add temperatur dummy "Temperatur"
scoreboard objectives add coldcast dummy "Cold_Cast"
scoreboard objectives add moved minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add place_torch minecraft.used:minecraft.torch
scoreboard objectives add place_cfire minecraft.used:minecraft.campfire
scoreboard objectives add place_furnace minecraft.used:minecraft.furnace
scoreboard objectives add place_smoker minecraft.used:minecraft.smoker
scoreboard objectives add place_bfurnace minecraft.used:minecraft.blast_furnace
scoreboard objectives add place_gstone minecraft.used:minecraft.glowstone
scoreboard objectives add place_lava minecraft.used:minecraft.lava_bucket
scoreboard objectives add place_jlantern minecraft.used:minecraft.jack_o_lantern
scoreboard objectives add place_magma minecraft.used:minecraft.magma_block
scoreboard objectives add place_flint minecraft.used:minecraft.flint_and_steel
scoreboard objectives add place_slantern minecraft.used:minecraft.sea_lantern
scoreboard objectives add place_light dummy "Light Placed"

#Flo
#stamina
scoreboard objectives add stamina dummy
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add run minecraft.custom:minecraft.sprint_one_cm

#DrBlackError
#Bossbar festlegen
execute as @a run bossbar add healthbar "Target Health"
execute as @a run bossbar set healthbar color red
execute as @a run bossbar set healthbar players @a
execute as @a run bossbar add zombiebar "Zombie"
execute as @a run bossbar set zombiebar players @a
execute as @a run bossbar add skeletonbar "Skelett"
execute as @a run bossbar set skeletonbar players @a
execute as @a run bossbar add creeperbar "Creeper"
execute as @a run bossbar set creeperbar players @a
#execute as @a run bossbar add xyzbar "xyz"
#execute as @a run bossbar set xyznbar players @a

#DrBlackError
#Scores auf Standard setzen
scoreboard players set @a stamina 100
scoreboard players set @a mana 10
scoreboard players set @a temperatur 40
scoreboard players set @a thrist 10

#DrBlackError
#autofisher-countdown
scoreboard objectives add fishercountdown dummy

#DrBlackError
#autominer-countdown
scoreboard objectives add minercountdown dummy
