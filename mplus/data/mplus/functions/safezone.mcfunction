#IFloooI
#Safezone [WIP]
#mplus:safezone2
execute as @r at @s as @e[limit=1,type=item,nbt={OnGround:1b,Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:regeneration"}}}] at @s if block ~ ~ ~ cauldron run tag @s add safezone1
execute as @r at @s as @e[tag=!safezone1,type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] at @s if block ~ ~ ~ cauldron run tag @s add safezone2

execute as @e[tag=safezone1] at @s if entity @e[tag=safezone2,distance=..1] run tag @s add craft_safezone1
execute as @e[type=item,tag=craft_safezone1] at @s run kill @e[tag=safezone2,distance=..1,limit=1]
#Changes
#Changes!
execute as @e[type=item,tag=craft_safezone1] at @s run playsound minecraft:block.wood.place master @a
scoreboard players reset @a[scores={drop_sneak=1..}] drop_sneak
execute as @e[type=item,tag=craft_safezone1] at @s run data merge entity @s {Motion:[0.0d,0.3d,0.0d],Tags:[],Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:'{"text":"Safe-Zone","color":"gold"}',Lore:['{"text":"Kann dir das Leben Retten","color":"gold"}']}}}}
execute as @e[nbt={OnGround:1b,Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:'{"text":"Safe-Zone","color":"gold"}',Lore:['{"text":"Kann dir das Leben Retten","color":"gold"}']}}}}] at @s run function mplus:safezone2
