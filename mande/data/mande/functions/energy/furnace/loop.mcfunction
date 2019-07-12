#DrBlackError
#efurnace
execute as @e[tag=efurnace] at @s if entity @e[tag=transporter,distance=..6,limit=1] run data merge block ~ ~2 ~ {BurnTime:1000, CookTimeTotal:10}
execute as @e[tag=efurnace] at @s unless block ~ ~2 ~ minecraft:furnace run tag @s add killefurnace
execute as @e[tag=efurnace,tag=killefurnace] at @s run summon item ~ ~2 ~ {Motion:[0.0,0.4,0.0],Item:{id:"minecraft:armor_stand",Count:1b}}
execute as @e[tag=efurnace,tag=killefurnace] at @s run kill @s
