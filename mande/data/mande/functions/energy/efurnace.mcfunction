#DrBlackError
#efurnace
setblock ~ ~ ~ furnace replace
tag @s add efurnace
tag @s add energy
tellraw @a[distance=..5] "Nice Energy"
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{id:"minecraft:furnace",Count:1b,}},distance=..2] run kill @s
