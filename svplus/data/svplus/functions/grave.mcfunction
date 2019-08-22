# # # Grab System by michi_exe # # #
#Grab erstellen wenn Spieler stirbt
execute as @a[scores={grave=1..}] at @s run summon area_effect_cloud ~ ~1 ~ {Duration:99999,Tags:["grave","grave_mark","grave_setup","get_uuid"]}
execute as @e[tag=grave_mark,tag=grave_setup] at @s if block ~ ~ ~ bedrock run kill @s
execute as @e[tag=grave_mark,tag=grave_setup] at @s if block ~ ~1 ~ bedrock run kill @s
execute as @e[tag=grave_mark,tag=grave_setup] at @s if block ~ ~-1 ~ bedrock run kill @s
execute as @e[tag=grave_mark,tag=grave_setup] at @s if block ~ ~-2 ~ bedrock run kill @s
execute as @e[tag=grave_mark,tag=grave_setup] at @s if block ~-1 ~-1 ~ bedrock run kill @s

execute as @e[tag=grave_mark,tag=grave_setup] at @s run setblock ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:barrier",Count:10b,tag:{display:{Name:"{\"text\":\"PLACEHOLDER\",\"color\":\"red\",\"bold\":true,\"underlined\":true}"}}}]}
execute as @e[tag=grave_mark] at @s if block ~ ~-1 ~ trapped_chest{Items:[{Slot:0b,id:"minecraft:barrier",Count:10b,tag:{display:{Name:'{"text":"PLACEHOLDER","color":"red","bold":true,"underlined":true}'}}}]} run replaceitem block ~ ~-1 ~ container.0 air
execute as @e[tag=grave_mark,tag=grave_setup] at @s run tp @e[type=item,distance=..5] ~ ~1 ~
execute as @e[tag=grave_mark,tag=grave_setup] at @s run setblock ~ ~-2 ~ redstone_lamp
execute as @e[tag=grave_mark,tag=grave_setup] at @s run setblock ~ ~-1 ~ trapped_chest[type=right]
execute as @e[tag=grave_mark,tag=grave_setup] at @s run setblock ~-1 ~-1 ~ trapped_chest[type=left]



#Grab NUR für den RICHTIGEN Spieler zugängig machen
execute as @e[tag=grave_mark] at @s unless entity @e[tag=grave_save,distance=..1] align xyz run tp @e[tag=grave_save,distance=..2,limit=1] ~ ~-1.5 ~0.5
execute as @e[tag=grave_mark] at @s if score @r[distance=..4] uuid = @s uuid unless entity @e[type=item,distance=..4] run tp @e[tag=grave_save,distance=..4,sort=nearest] ~ ~-400 ~
execute as @e[tag=grave_mark] at @s unless entity @e[tag=grave_save,distance=..4] if score @r[distance=4.5..] uuid = @s uuid align xyz run summon slime ~ ~-1.5 ~0.5 {NoAI:1b,Size:4b,Silent:1b,PresistanceRequiered:1b,Invulnerable:1b,NoGravity:1b,ActiveEffects:[{Id:14b,Amplifier:200b,Duration:99999,ShowParticles:0b}],Tags:["grave","grave_save","get_uuid"]}



#Grab öffen
#execute as @e[tag=grave_mark] at @s run tp @e[type=item,distance=..5] ~ ~1 ~
#execute as @e[tag=grave_mark] at @s if block ~ ~-2 ~ redstone_lamp[lit=true] run tag @s add grave_clear
#execute as @e[tag=grave_mark] at @s if block ~ ~-2 ~ redstone_lamp[lit=true] run fill ~ ~-1 ~ ~-1 ~-1 ~ air destroy



#Grab removen
execute as @e[tag=grave_mark] at @s if block ~ ~ ~ hopper{Items:[]} run setblock ~ ~ ~ air
execute as @e[tag=grave_mark] at @s if block ~ ~-1 ~ trapped_chest{Items:[]} unless entity @e[type=item,distance=..5] run tag @s add grave_clear
execute as @e[tag=grave_mark,tag=grave_clear] at @s run fill ~ ~ ~ ~-1 ~-2 ~ air
execute as @e[tag=grave_mark,tag=grave_clear] at @s run tp @e[tag=grave_save,distance=..6,sort=nearest,limit=1] ~ ~-400 ~
execute as @e[tag=grave_mark,tag=grave_clear] at @s run kill @s



#Random Tick stuff xD
data merge entity @e[tag=grave_mark,nbt=!{Duration:99999},limit=1,sort=random] {Duration:99999}
execute as @e[tag=grave_mark] at @s run data merge block ~ ~ ~ {TransferCooldown:0}
effect give @e[tag=grave_save] minecraft:invisibility 99999 200 true
effect give @e[tag=grave_save] minecraft:resistance 99999 200 true
tag @e[tag=grave_mark,tag=grave_setup] remove grave_setup
scoreboard players reset @a grave
