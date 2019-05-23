#DrBlackError
#auto-miner
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Miner"}'}}}},distance=..2] run replaceitem entity @s weapon.mainhand minecraft:diamond_pickaxe 1
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Miner"}'}}}},distance=..2] run tag @s add autominer
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Miner"}'}}}},distance=..2] run tellraw @a[distance=..5] "Ohne Wasser kein Fischer!"
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Miner"}'}}}},distance=..2] run give @p[distance=..5] diamond_pickaxe{"display":{"Name":"{\"text\":\"Fischer\"}"}} 1
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Miner"}'}}}},distance=..2] run kill @s
execute as @e[tag=autominer] run scoreboard players add @s minercountdown 1
execute as @e[tag=autominer,scores={minercountdown=1200..}] at @s run loot spawn ~ ~1 ~ fish svplus:test ~ ~1 ~
execute as @e[tag=autominer,scores={minercountdown=1200..}] run scoreboard players set @s minercountdown 0

#DrBlackError
#diamond-upgrade
execute as @e[type=armor_stand,tag=autominer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] run replaceitem entity @s weapon.offhand minecraft:diamond_block 1
execute as @e[type=armor_stand,tag=autominer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] run tag @s add autominer-diamond
execute as @e[type=armor_stand,tag=autominer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] run tellraw @a[distance=..5] "Diamond-Upgrade enabled!"
execute as @e[tag=autominer,tag=autominer-diamond,scores={minercountdown=600..}] at @s run loot spawn ~ ~1 ~ fish svplus:test ~ ~1 ~
execute as @e[tag=autominer,scores={minercountdown=600..}] run scoreboard players set @s minercountdown 0
execute at @e[type=armor_stand,tag=autominer] as @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] run kill @s

#IFloooI
#activate arms
execute as @e[type=armor_stand,tag=autominer,tag=!arms] run data merge entity @s {ShowArms:1b}
execute as @e[type=armor_stand,tag=autominer,tag=!arms] run tag @s add arms
