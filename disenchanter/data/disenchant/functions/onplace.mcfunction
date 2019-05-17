execute as @e[type=bat,tag=disenchant] at @s run setblock ~ ~ ~ dispenser[facing=up] keep
execute as @e[type=bat,tag=disenchant] at @s unless entity @e[tag=disenchant,type=armor_stand,distance=..3] run summon armor_stand ~ ~1 ~ {Tags:[disenchant],Invisible:1b,NoGravity:1b,Marker:1b,CustomName:"{\"text\":\"Disenchanter\",\"color\":\"dark_purple\"}",CustomNameVisible:1b}
execute as @e[tag=disenchant,type=minecraft:armor_stand] at @s unless block ~ ~-1 ~ minecraft:dispenser run kill @s
execute as @e[type=bat,tag=disenchant] at @s run kill @s
