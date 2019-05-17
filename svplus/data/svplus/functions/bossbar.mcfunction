#DrBlackError
#Bossbar
#
#

execute as @a at @s positioned ^ ^ ^2 as @e[type=zombie,limit=1,distance=..1] at @s store result bossbar zombiebar value run data get entity @s Health
#execute as @a at @s positioned ^ ^ ^2 as @e[type=zombie,limit=1,distance=..1] at @s store result bossbar zombiebar max run data get entity @s Health
execute as @a at @s positioned ^ ^ ^2 unless entity @e[type=zombie,limit=1,distance=..1] run bossbar set zombiebar visible false
#execute as @a at @s positioned ^ ^ ^2 if entity @e[type=zombie,limit=1,distance=..1] run bossbar set zombiebar visible true

execute as @a at @s positioned ^ ^ ^2 as @e[type=skeleton,limit=1,distance=..1] at @s store result bossbar skeletonbar value run data get entity @s Health
#execute as @a at @s positioned ^ ^ ^2 as @e[type=skeleton,limit=1,distance=..1] at @s store result bossbar skeletonbar max run data get entity @s Health
execute as @a at @s positioned ^ ^ ^2 unless entity @e[type=skeleton,limit=1,distance=..1] run bossbar set skeletonbar visible false
#execute as @a at @s positioned ^ ^ ^2 if entity @e[type=skeleton,limit=1,distance=..1] run bossbar set skeletonbar visible true

execute as @a at @s positioned ^ ^ ^2 as @e[type=creeper,limit=1,distance=..1] at @s store result bossbar creeperbar value run data get entity @s Health
#execute as @a at @s positioned ^ ^ ^2 as @e[type=creeper,limit=1,distance=..1] at @s store result bossbar creeperbar max run data get entity @s Health
execute as @a at @s positioned ^ ^ ^2 unless entity @e[type=creeper,limit=1,distance=..1] run bossbar set creeperbar visible false
#execute as @a at @s positioned ^ ^ ^2 if entity @e[type=creeper,limit=1,distance=..1] run bossbar set creeperbar visible true

#Vorlage
#execute as @a at @s positioned ^ ^ ^2 as @e[type=xyz,limit=1,distance=..1] at @s store result bossbar xyzbar value run data get entity @s Health
#execute as @a at @s positioned ^ ^ ^2 as @e[type=xyz,limit=1,distance=..1] at @s store result bossbar xyzbar max run data get entity @s Health
#execute as @a at @s positioned ^ ^ ^2 unless entity @e[type=xyz,limit=1,distance=..1] run bossbar set xyzbar visible false
#execute as @a at @s positioned ^ ^ ^2 if entity @e[type=xyz,limit=1,distance=..1] run bossbar set xyzbar visible true

#execute as @e[type=!item] store result bossbar minecraft:healthbar value run data get entity @s Health 1
#execute as @a at @s if entity @e[type=!item,type=!player,distance=..5,limit=1] run say hi
