#DrBlackError
#wind
replaceitem entity @s armor.head minecraft:white_wool 1
tag @s add wind
tag @s add energy
tag @s[tag=energy,tag=!get_uuid,tag=!got_uuid] add get_uuid
tellraw @a[distance=..5] "Nice Energy"
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b,}},distance=..2] run kill @s

#add +1 energy to the nearest player
#execute as @e[tag=wind, tag=!owned] if score @p uuid = @s uuid run scoreboard players add @p energy 1
#execute as @e[tag=wind, tag=!owned] if score @p uuid = @s uuid run tag @s add owned
