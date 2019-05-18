execute as @e[type=bat,tag=Oven,limit=1] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Invisible:1b,Tags:["Oven", "BuildOven"]}
execute as @e[type=armor_stand,tag=Oven,tag=BuildOven,limit=1] at @s run function svplus:createdboven
execute as @e[type=armor_stand,tag=Oven,limit=1] run tag @s remove BuildOven
execute as @e[type=armor_stand,tag=Oven,limit=1] at @s run kill @e[type=bat,distance=..2]
