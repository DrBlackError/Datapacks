#DrBlackError
#Xp Storer

execute as @e[tag=xpstore,scores={xp=1..}] at @s if entity @p[distance=0..1] if block ~ ~ ~ light_weighted_pressure_plate[power=1] run scoreboard players remove @s xp 1
execute as @e[tag=xpstore,scores={xp=1..}] at @s if entity @p[distance=0..1] if block ~ ~ ~ light_weighted_pressure_plate[power=1] run xp add @p 1 levels
#execute as @e[tag=xpstore,scores={xp=1..}] at @s if entity @p[distance=0..1] if block ~ ~ ~ light_weighted_pressure_plate[power=1] run say hi

#execute as @e[tag=xpstore] at @s if entity @p[distance=0..1,scores={sneaktime=1,xp=1..}] if block ~ ~ ~ light_weighted_pressure_plate[power=1] run say hi
execute as @e[tag=xpstore] at @s if entity @p[distance=0..1,scores={sneaktime=1,xp=1..}] if block ~ ~ ~ light_weighted_pressure_plate[power=1] run scoreboard players add @s xp 1
execute as @e[tag=xpstore] at @s if entity @p[distance=0..1,scores={sneaktime=1,xp=1..}] if block ~ ~ ~ light_weighted_pressure_plate[power=1] run xp add @p -1 levels

execute as @e[tag=xpstore] at @s if entity @a[distance=5] if block ~ ~ ~ light_weighted_pressure_plate run title @p subtitle ["",{"score":{"name":"@s","objective":"xp"},"color":"yellow"},{"text":" Level vorhanden","color":"none"}]
execute as @e[tag=xpstore] at @s if entity @a[distance=5] if block ~ ~ ~ light_weighted_pressure_plate run title @p title ""


#scoreboard players add mal2.5 1 potenz
#scoreboard players operation
