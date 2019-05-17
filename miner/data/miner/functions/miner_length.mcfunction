execute as @e[type=armor_stand,tag=Length] at @s positioned ^ ^ ^1 unless entity @e[type=armor_stand,tag=Bohrer,distance=..0.1] run summon minecraft:armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Tags:[Bohrer,Length]}
execute as @e[type=armor_stand,tag=Bohrer,tag=Main] at @s run scoreboard players remove @s length 1
