function miner:craftminer
function miner:miner_setup
function miner:miner_work
execute as @e[type=armor_stand,tag=Bohrer,tag=Main] if score @s width matches 1.. run function miner:miner_width
execute as @e[type=armor_stand,tag=Bohrer,tag=Main] if score @s length matches 1.. run function miner:miner_length
execute as @e[type=armor_stand,tag=Bohrer,tag=Main] if score @s height matches 1.. run function miner:miner_height
function miner:miner_reset
execute as @e[type=minecraft:armor_stand,tag=Main,tag=Bohrer] at @s if score @p[distance=..5] 3x3 matches 1.. as @p[distance=..5] run function miner:presets/3x3
execute as @e[type=minecraft:armor_stand,tag=Main,tag=Bohrer] at @s if score @p[distance=..5] 9x9 matches 1.. as @p[distance=..5] run function miner:presets/9x9
execute as @e[type=minecraft:armor_stand,tag=Main,tag=Bohrer] at @s if score @p[distance=..5] 16x16 matches 1.. as @p[distance=..5] run function miner:presets/16x16
execute as @e[type=minecraft:armor_stand,tag=Main,tag=Bohrer] at @s if score @p[distance=..5] 32x32 matches 1.. as @p[distance=..5] run function miner:presets/32x32
