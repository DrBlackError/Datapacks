#Flooo
#ArmorChanger
execute as @e[type=armor_stand,tag=!quickarmor] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:chainmail_chestplate"}},distance=..1] run tag @s add quickarmor
execute as @a[tag=!readyforchange,gamemode=!spectator,gamemode=!creative] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s add readyforchange
execute as @a[tag=readyforchange,gamemode=!spectator,gamemode=!creative] at @s unless entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s remove readyforchange
execute as @a[tag=readyforchange,tag=!changer,gamemode=!spectator,gamemode=!creative] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..0.5] run function basicplus:quickchange/changer
execute as @a[tag=changer,gamemode=!spectator,gamemode=!creative] at @s unless entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s remove changer
#test
