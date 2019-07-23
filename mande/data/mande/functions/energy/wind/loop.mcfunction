#DrBlackError
#add +? energy to the nearest player
execute as @e[tag=wind,tag=!owned,tag=got_uuid] at @s store result score @s ypos run data get entity @s Pos[1]

execute as @e[scores={ypos=64..87},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 5
execute as @e[scores={ypos=88..111},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 10
execute as @e[scores={ypos=112..135},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 15
execute as @e[scores={ypos=136..159},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 20
execute as @e[scores={ypos=160..183},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 25
execute as @e[scores={ypos=184..207},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 30
execute as @e[scores={ypos=208..231},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 35
execute as @e[scores={ypos=232..255},tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run scoreboard players add @p energy 40

execute as @e[tag=wind,tag=!owned,tag=got_uuid] at @s if score @p uuid = @s uuid run tag @s add owned

#1	64	87
#2	88	111
#3	112	135
#4	136	159
#5	160	183
#6	184	207
#7	208	231
#8	232	255
