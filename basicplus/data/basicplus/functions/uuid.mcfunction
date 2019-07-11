#IFloooI
#UUID-System
execute as @a[tag=!uuid,limit=1] run scoreboard players operation @s uuid = Max_Player uuid
execute as @a[tag=!uuid,limit=1] run scoreboard players add Max_Player uuid 1
execute as @a[tag=!uuid,limit=1] run tag @s add uuid

#DrBlackRat
#give an object a uuid from a player

execute as @e[tag=get_uuid,tag=!get_uuid_zero] at @s run scoreboard players set @s uuid 0
execute as @e[tag=get_uuid] at @s run tag @s add get_uuid_zero
execute as @e[tag=get_uuid] at @s if score @s uuid = @p uuid run tag @s remove get_uuid
execute as @e[tag=get_uuid_zero] at @s if score @s uuid = @p uuid run tag @s remove get_uuid_zero
execute as @e[tag=get_uuid] at @s run scoreboard players add @s uuid 1
