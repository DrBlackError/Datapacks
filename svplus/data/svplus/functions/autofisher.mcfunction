#DrBlackError with a lot help from IFloooI
#Auto-fisher
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] if block ~ ~ ~ water run replaceitem entity @s weapon.mainhand minecraft:fishing_rod 1
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] if block ~ ~ ~ water run tag @s add autofisher
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] unless block ~ ~ ~ water run tellraw @a[distance=..5] "Ohne Wasser kein Fischer!"
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] unless block ~ ~ ~ water run give @p[distance=..5] fishing_rod{"display":{"Name":"{\"text\":\"Fischer\"}"}} 1
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] run kill @s
execute as @e[tag=autofisher] run scoreboard players add @s fishercountdown 1
execute as @e[tag=autofisher,scores={fishercountdown=1200..}] at @s run loot spawn ~ ~1 ~ fish minecraft:gameplay/fishing ~ ~1 ~
execute as @e[tag=autofisher,scores={fishercountdown=1200..}] run scoreboard players set @s fishercountdown 0

#DrBlackError
#diamond-upgrade
execute as @e[type=armor_stand,tag=autofisher] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] if block ~ ~ ~ water run replaceitem entity @s weapon.offhand minecraft:diamond_block 1
execute as @e[type=armor_stand,tag=autofisher] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] if block ~ ~ ~ water run tag @s add autofisher-diamond
execute as @e[type=armor_stand,tag=autofisher] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] if block ~ ~ ~ water run tellraw @a[distance=..5] "Diamond-Upgrade enabled!"
execute as @e[tag=autofisher,tag=autofisher-diamond,scores={fishercountdown=600..}] at @s run loot spawn ~ ~1 ~ fish minecraft:gameplay/fishing ~ ~1 ~
execute as @e[tag=autofisher,scores={fishercountdown=600..}] run scoreboard players set @s fishercountdown 0
execute at @e[type=armor_stand,tag=autofisher] as @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..2] run kill @s

#IFloooI
#activate arms
execute as @e[type=armor_stand,tag=autofisher,tag=!arms] run data merge entity @s {ShowArms:1b}
execute as @e[type=armor_stand,tag=autofisher,tag=!arms] run tag @s add arms
