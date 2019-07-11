#DrBlackError
#energy

#particletimer
execute as @e[tag=energy,limit=1] run scoreboard players add @e[tag=energy] particletimer 1
execute as @e[tag=energy,scores={particletimer=21..}] run scoreboard players set @e[tag=energy] particletimer 0

#transporter
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run replaceitem entity @s armor.head minecraft:redstone_block 1
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run tag @s add energy
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run tellraw @a[distance=..5] "Nice Energy"
#execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run tag @p add energy
#execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run give @p[distance=..5] redstone_block{"display":{"Name":"{\"text\":\"Energy Crystal\"}"}} 1
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run kill @s

#execute as @e[type=minecraft:armor_stand,tag=!owned,tag=energy] store result score @s owner run data get entity @p UUIDMost
#execute as @e[type=minecraft:armor_stand,tag=!owned,tag=energy] run tag @s add owned

#DrBlackError
#armor-effects
execute as @e[type=armor_stand,tag=energy,tag=!tiny] run data merge entity @s {Small:0b,NoGravity:1b,Rotation:[0f],Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Invisible:1b,Marker:1b}
execute as @e[type=armor_stand,tag=energy,tag=!tiny] at @s run tp @s ~ ~-1.375 ~
execute as @e[type=armor_stand,tag=energy,tag=!tiny] run tag @s add tiny

#DrBlackError by DrBlackRat
#get uuid
execute as @e[tag=energy] at @s run tag @e[tag=energy,tag=!get_uuid,tag=!got_uuid] add get_uuid

#DrBlackError
#particle effects
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~3 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.9 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.8 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.7 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.6 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.5 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.4 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.3 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.2 ~
execute as @e[type=minecraft:armor_stand,tag=energy,scores={particletimer=20}] at @s if entity @p[distance=..5] anchored eyes run particle minecraft:dust 255 0 0 1 ~ ~2.1 ~

execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~4 ~2 ~
execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~ ~2 ~4
execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~-4 ~2 ~
execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~ ~2 ~-4
execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~4 ~2 ~4
execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~-4 ~2 ~-4
execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~-4 ~2 ~4
execute as @a at @e[type=minecraft:armor_stand,tag=energy,limit=5,sort=nearest,scores={particletimer=20}] at @e[tag=energy] if entity @a[nbt={SelectedItem:{id:"minecraft:redstone_block"}},distance=..7] run particle minecraft:dust 255 0 0 1 ~4 ~2 ~-4


#solar
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b,}},distance=..2] run replaceitem entity @s armor.head minecraft:daylight_detector 1
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b,}},distance=..2] run tag @s add energy
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b,}},distance=..2] run tag @s add solar
execute as @e[tag=solar, tag=!owned] if score @p uuid = @s uuid run scoreboard players add @p energy 1
execute as @e[tag=solar, tag=!owned] if score @p uuid = @s uuid run tag @s add owned
execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b,}},distance=..2] run tellraw @a[distance=..5] "Nice Energy"
#execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b,}},distance=..2] run tag @p add energy
#execute as @e[type=armor_stand] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b,tag:{display:{Name:'{"text":"Energy Crystal"}'}}}},distance=..2] run give @p[distance=..5] redstone_block{"display":{"Name":"{\"text\":\"Energy Crystal\"}"}} 1
execute at @e[type=armor_stand] as @e[type=item,nbt={Item:{id:"minecraft:daylight_detector",Count:1b,}},distance=..2] run kill @s
