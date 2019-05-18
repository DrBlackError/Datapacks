#IFloooI
#UUID-System
execute as @a[tag=!uuid,limit=1] run scoreboard players operation @s uuid = Max_Player uuid
execute as @a[tag=!uuid,limit=1] run scoreboard players add Max_Player uuid 1
execute as @a[tag=!uuid,limit=1] run tag @s add uuid
