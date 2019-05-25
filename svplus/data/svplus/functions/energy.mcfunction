#DrBlackError
#energy-system
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run replaceitem entity @s weapon.mainhand minecraft:redstone_block 1
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run tag @s add energy
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run tellraw @a[distance=..5] "Nice Energy"
#execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run give @p[distance=..5] redstone_block{"display":{"Name":"{\"text\":\"Energy Crystal\"}"}} 1
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run kill @s

execute as @e[type=minecraft:armor_stand,tag=!owned,tag=energy] store result score @s owner run data get entity @p UUIDMost
execute as @e[type=minecraft:armor_stand,tag=!owned,tag=energy] run tag @s add owned

#IFloooI
#activate arms
execute as @e[type=armor_stand,tag=energy,tag=!arms] run data merge entity @s {ShowArms:1b}
execute as @e[type=armor_stand,tag=energy,tag=!arms] run tag @s add arms
