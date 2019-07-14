#IFloooI
#UUID-System
execute as @a[tag=!uuid,limit=1] run scoreboard players operation @s uuid = Max_Player uuid
execute as @a[tag=!uuid,limit=1] run scoreboard players add Max_Player uuid 1
execute as @a[tag=!uuid,limit=1] run tag @s add uuid

#DrBlackRat
#give an object a uuid from a player

execute as @e[tag=get_uuid] at @s store result score @s uuid run scoreboard players get @p uuid
execute as @e[tag=get_uuid] at @s if score @s uuid = @p uuid run tag @s add got_uuid
execute as @e[tag=get_uuid] at @s if score @s uuid = @p uuid run tag @s remove get_uuid
