#DrBlackError
#transporter
replaceitem entity @s armor.head minecraft:redstone_block 1
tag @s add transporter
tag @s add energy
tag @s[tag=energy,tag=!get_uuid,tag=!got_uuid] add get_uuid
tellraw @a[distance=..5] "Nice Energy"
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run kill @s
