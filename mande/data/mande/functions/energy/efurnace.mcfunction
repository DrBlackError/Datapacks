#DrBlackError
#efurnace
setblock ~ ~ ~ furnace replace
tag @s add efurnace
tag @s add energy
tellraw @a[distance=..5] "Nice Energy"
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{id:"minecraft:furnace",Count:1b,}},distance=..2] run kill @s

#add +1 energy_use to the nearest player
execute as @e[tag=solar, tag=!owned] if score @p uuid = @s uuid run scoreboard players add @p energy_use 2
execute as @e[tag=solar, tag=!owned] if score @p uuid = @s uuid run tag @s add owned
