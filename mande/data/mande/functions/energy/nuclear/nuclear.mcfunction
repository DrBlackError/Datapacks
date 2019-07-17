#DrBlackError
#nuclear
replaceitem entity @s armor.head minecraft:beacon 1
tag @s add nuclear
tag @s add energy
tag @s[tag=energy,tag=!get_uuid,tag=!got_uuid] add get_uuid
tellraw @a[distance=..5] "Nice Energy"
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{id:"minecraft:beacon",Count:1b,}},distance=..2] run kill @s
execute as @s store result score @s xpos run data get entity @s Pos[0]
execute as @s store result score @s ypos run data get entity @s Pos[1]
execute as @s store result score @s zpos run data get entity @s Pos[2]

execute as @s run tellraw @a ["",{"text":"Warnung! Bei ","color":"yellow"},{"score":{"name":"@s","objective":"xpos"},"color":"yellow"},{"text":" ","color":"none"},{"score":{"name":"@s","objective":"ypos"},"color":"yellow"},{"text":" ","color":"none"},{"score":{"name":"@s ","objective":"zpos"},"color":"yellow"},{"text":" ","color":"none"},{"text":"wurde ein Nuklearreaktor aufgebaut!","color":"yellow"}]

Hallo Welt
