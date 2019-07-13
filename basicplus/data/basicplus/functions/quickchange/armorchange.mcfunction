execute as @e[type=armor_stand,tag=!quickarmor] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:chainmail_chestplate"}},distance=..1] run tag @s add quickarmor
execute as @a[tag=!readyforchange] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s add readyforchange
execute as @a[tag=readyforchange] at @s unless entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s remove readyforchange
execute as @a[tag=readyforchange,scores={armor_change=89}] at @s run setblock ~ ~2 ~ minecraft:shulker_box
execute as @a[tag=readyforchange,scores={armor_change=90}] at @s run function basicplus:quickchange/changer
execute as @a[scores={armor_change=100..}] run scoreboard players set @s armor_change 0
