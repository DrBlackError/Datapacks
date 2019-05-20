
#IFloooI
#System to Detect Player who aren't doin something

#Timer who Rules this Datapack
scoreboard players add @a rotation_timer 1

#Stores Rotation and Position in Scores
execute as @a store result score @s posX run data get entity @s Pos[0] 1
execute as @a store result score @s posY run data get entity @s Pos[1] 1
execute as @a store result score @s posZ run data get entity @s Pos[2] 1

#Sets Position and Rotation to another Variable after 1 Second
execute as @a[scores={rotation_timer=20}] run scoreboard players operation @s posX_check = @s posX
execute as @a[scores={rotation_timer=20}] run scoreboard players operation @s posY_check = @s posY
execute as @a[scores={rotation_timer=20}] run scoreboard players operation @s posZ_check = @s posZ

#Chang
execute as @a store success score @s afk_posX if score @s posX = @s posX_check
execute as @a store success score @s afk_posY if score @s posY = @s posY_check
execute as @a store success score @s afk_posZ if score @s posZ = @s posZ_check

#Compares all Scores and Finishs it in the last one
execute as @a[scores={afk_posX=1,afk_posY=1,afk_posZ=1}] run scoreboard players set @s afk_finish 1
execute as @a unless entity @s[scores={afk_posX=1,afk_posY=1,afk_posZ=1,=1}] run scoreboard players set @s afk_finish 0
#
execute as @a[scores={posX_check=1}] run scoreboard players add @s posX_timer 1
execute as @a[scores={posY_check=1}] run scoreboard players add @s posY_timer 1
execute as @a[scores={posZ_check=1}] run scoreboard players add @s posZ_timer 1
#
execute as @a[scores={rotation_timer=21..}] run scoreboard players set @s rotation_timer 0
execute as @a[scores={afk_finish=1}] run scoreboard players add @s afk_timer 1
execute as @a[scores={afk_finish=0}] run scoreboard players reset @s afk_timer
execute as @a[scores={afk_timer=6000}] run tag @s add afk_setup
execute as @a[tag=afk_setup] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" ist nun ","color":"gold"},{"text":"AFK","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Away From Keyboard","color":"gold"}]}}}]
execute as @a[tag=afk_setup] run tag @s add afk
execute as @a[tag=afk] run tag @s remove afk_setup
execute as @a[tag=afk,scores={afk_finish=0}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" ist nun nicht mehr ","color":"gold"},{"text":"AFK","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Away From Keyboard","color":"gold"}]}}}]
execute as @a[tag=afk,scores={afk_finish=0}] run tag @s remove afk
scoreboard players enable @a afk
execute as @a[scores={afk=1}] run scoreboard players set @s afk_timer 5999
execute as @a[scores={afk=1}] run scoreboard players set @s afk 0
