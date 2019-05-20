#DrBlackError with a lot help from IFloooI
#Auto-fisher
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] if block ~ ~ ~ water run replaceitem entity @s weapon.mainhand minecraft:fishing_rod 1
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] unless block ~ ~ ~ water run tellraw @a "Ohne Wasser kein Fischer!"
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] unless block ~ ~ ~ water run give @p[distance=..5] fishing_rod{"display":{"Name":"{\"text\":\"Fischer\"}"}} 1
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Fischer"}'}}}},distance=..2] run kill @s
