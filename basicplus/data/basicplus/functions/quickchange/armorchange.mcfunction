execute as @e[type=armor_stand,tag=!quickarmor] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:chainmail_chestplate"}},distance=..1] run tag @s add quickarmor
execute as @a[tag=!readyforchange] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s add readyforchange
execute as @a[tag=readyforchange] at @s unless entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s remove readyforchange
execute as @a[tag=readyforchange] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..0.5] at @e[type=armor_stand,distance=..1] run setblock ~ ~2 ~ minecraft:shulker_box
execute as @a[tag=readyforchange] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..0.5] run function basicplus:quickchange/changer
