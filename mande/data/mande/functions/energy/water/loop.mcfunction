#michi_exe
#add +1 energy to the nearest player
execute as @e[tag=water, tag=!owned, tag=got_uuid] at @s if block ~ ~2 ~ water if score @p uuid = @s uuid run say hi
#scoreboard players add @p energy 1
execute as @e[tag=water, tag=!owned, tag=got_uuid] at @s if score @p uuid = @s uuid run tag @s add owned
