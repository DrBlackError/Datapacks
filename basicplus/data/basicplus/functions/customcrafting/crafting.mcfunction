#DrBlackRat
#Customcrafting halt
#basicplus:main, basicplus:setup
#


#spawn der barrel_block
execute as @a[scores={barrel_placed=1..}] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:50,Tags:["barrel_projektil"]}
execute as @a[scores={barrel_placed=1..}] at @s run tp @e[tag=barrel_projektil] @s
execute if entity @a[scores={barrel_placed=1..}] as @e[tag=barrel_projektil] at @s run tp @s ~ ~1.8 ~
execute as @e[tag=barrel_projektil] at @s run tp @s ^ ^ ^1
execute as @e[tag=barrel_projektil] at @s if block ~ ~ ~ barrel unless entity @e[tag=barrel_block,distance=..0.8] run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:999999999,Tags:["barrel_block"]}

execute as @e[tag=barrel_block] at @s if data block ~ ~ ~ {Items:[{Slot:8b, id:"minecraft:crafting_table",Count:1b}]} run tag @s add crafting_barrel
execute as @e[tag=barrel_block] at @s if data block ~ ~ ~ {Items:[{Slot:8b, id:"minecraft:crafting_table",Count:1b}]} run playsound minecraft:entity.arrow.hit_player ambient @p
execute as @e[tag=barrel_block] at @s if data block ~ ~ ~ {Items:[{Slot:8b, id:"minecraft:crafting_table",Count:1b}]} run tag @s add barrel_name
execute as @e[tag=barrel_block] at @s if data block ~ ~ ~ {Items:[{Slot:8b, id:"minecraft:crafting_table",Count:1b}]} run tellraw @p ["",{"text":"Werkbank+ erfolgreich gesetzt!","color":"aqua","underlined":true}]
execute as @e[tag=barrel_block] at @s if data block ~ ~ ~ {Items:[{Slot:8b, id:"minecraft:crafting_table",Count:1b}]} run setblock ~ ~ ~ barrel[facing=down]
execute as @e[tag=barrel_name] at @s run data merge block ~ ~ ~ {CustomName:"{\"text\":\"Werkbank+\"}"}

execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.1 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.6 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.7 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.9 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.10 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.14 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.16 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.17 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.19 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.24 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.25 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1
execute as @e[tag=crafting_barrel] at @s run replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}} 1

clear @a minecraft:gray_stained_glass_pane{display:{Name:"{\"text\":\"Werkbank+\"}"}}

#reset
execute as @e[tag=barrel_projektil] at @s if block ~ ~ ~ barrel run kill @s
scoreboard players set @a[scores={barrel_placed=1..}] barrel_placed 0
execute as @e[tag=barrel_block] at @s unless block ~ ~ ~ barrel run kill @s
tag @e[tag=barrel_name] remove barrel_name

#barrel_block leben reset
execute as @e[nbt={Age:999999800},tag=barrel_block] run data merge entity @s {Age:0}
