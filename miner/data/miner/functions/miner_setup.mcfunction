execute as @e[type=bat,name=Bohrer] at @s unless entity @e[type=armor_stand,tag=Bohrer,distance=..50] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Maker:1b,Tags:[Bohrer,Main,Width,Length,Height]}
execute as @e[type=minecraft:armor_stand,tag=Main,tag=!Miner_Started] at @s if score @p[distance=..10] width matches 1.. run scoreboard players operation @s width = @p[distance=..10] width
execute as @e[type=minecraft:armor_stand,tag=Main,tag=!Miner_Started] at @s if score @p[distance=..10] length matches 1.. run scoreboard players operation @s length = @p[distance=..10] length
execute as @e[type=minecraft:armor_stand,tag=Main,tag=!Miner_Started] at @s if score @p[distance=..10] height matches 1.. run scoreboard players operation @s height = @p[distance=..10] height
execute as @e[type=minecraft:armor_stand,tag=Main,tag=!width_r] at @s run tellraw @a[distance=..5] ["",{"text":"Bitte setze mit den Befehlen:\n","color":"yellow"},{"text":"------------------------","color":"none"},{"text":"\n/trigger width set (zahl)\n/trigger length set (zahl)\nund\n/trigger height set (zahl)\n","color":"dark_green"},{"text":"------------------------\n","color":"none"},{"text":"Die gewünschten Werte für deine Quarry!","color":"yellow"}]
execute as @e[type=minecraft:armor_stand,tag=Main,tag=!width_r] at @s run tellraw @a[distance=..5] ["",{"text":"----------------------------------------------\n"},{"text":"Wenn du möchtest, kannst du auch eines dieser Presets benutzen (klicke dafür einfach auf das Preset):\n\n","color":"yellow"},{"text":"------\n","color":"none"},{"text":"[3x3]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger 3x3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Makes a 3x3 Hole to Bedrock","color":"dark_green"}]}}},{"text":"[9x9]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger 9x9"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Makes a 9x9 Hole to Bedrock","color":"dark_green"}]}}},{"text":"[16x16]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger 16x16"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Makes a 16x16 Hole to Bedrock","color":"dark_green"}]}}},{"text":"[32x32]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger 32x32"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Makes a 32x32 Hole to Bedrock","color":"dark_green"}]}}},{"text":"\n------","color":"none"}]
execute as @e[type=minecraft:armor_stand,tag=Main,tag=!width_r] run tag @s add width_r
execute as @e[type=minecraft:armor_stand,tag=Main] at @s run scoreboard players enable @p[distance=..10,limit=1] width
execute as @e[type=minecraft:armor_stand,tag=Main] at @s run scoreboard players enable @p[distance=..10,limit=1] length
execute as @e[type=minecraft:armor_stand,tag=Main] at @s run scoreboard players enable @p[distance=..10,limit=1] height
execute as @e[type=minecraft:armor_stand,tag=Main] at @s run scoreboard players enable @p[distance=..10,limit=1] 3x3
execute as @e[type=minecraft:armor_stand,tag=Main] at @s run scoreboard players enable @p[distance=..10,limit=1] 9x9
execute as @e[type=minecraft:armor_stand,tag=Main] at @s run scoreboard players enable @p[distance=..10,limit=1] 16x16
execute as @e[type=minecraft:armor_stand,tag=Main] at @s run scoreboard players enable @p[distance=..10,limit=1] 32x32
execute as @a[scores={width=1..}] run scoreboard players set @s width 0
execute as @a[scores={length=1..}] run scoreboard players set @s length 0
execute as @a[scores={height=1..}] run scoreboard players set @s height 0
execute as @e[type=bat,name=Bohrer] at @s run kill @s
sd
