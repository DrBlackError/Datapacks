#IFloooI
#System to Detect Player who aren't doin something
execute as @a store result score @s rotation run data get entity @s Rotation[1] 1
scoreboard players add @a rotation_timer 1
execute as @a[scores={rotation_timer=20}] run scoreboard players operation @s rotation_check = @s rotation
execute as @a[scores={rotation_timer=21..}] run scoreboard players set @s rotation_timer 0
execute as @a if score @s afk_check matches 1 run scoreboard players add @s afk_timer 1
execute as @a if score @s afk_check matches 0 run scoreboard players reset @s afk_timer
execute as @a store success score @s afk_check if score @s rotation = @s rotation_check
execute as @a[scores={afk_timer=6000}] run tag @s add afk_setup
execute as @a[tag=afk_setup] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" ist nun ","color":"gold"},{"text":"AFK","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Away From Keyboard","color":"gold"}]}}}]
execute as @a[tag=afk_setup] run tag @s add afk
execute as @a[tag=afk] run tag @s remove afk_setup
execute as @a[tag=afk,scores={afk_check=0}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" ist nun nicht mehr ","color":"gold"},{"text":"AFK","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Away From Keyboard","color":"gold"}]}}}]
execute as @a[tag=afk,scores={afk_check=0}] run tag @s remove afk
scoreboard players enable @a afk
execute as @a[scores={afk=1}] run scoreboard players set @s afk_timer 5999
execute as @a[scores={afk=1}] run scoreboard players set @s afk 0
