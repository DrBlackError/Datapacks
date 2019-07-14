#DrBlackError
#get uuid
#execute as @e[tag=energy] at @s run tag @e[tag=energy,tag=!get_uuid,tag=!got_uuid] add get_uuid

#transporter
execute as @e[type=armor_stand,tag=!energy] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run function mande:energy/transporter/transporter

#solar
execute as @e[type=armor_stand,tag=!energy] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b,}},distance=..2] run function mande:energy/solar/solar

#efurnace
execute as @e[type=armor_stand,tag=!energy] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:furnace",Count:1b,}},distance=..2] run function mande:energy/efurnace/efurnace
