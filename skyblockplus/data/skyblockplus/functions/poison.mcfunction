#LittleRetard
#Extract poison from poisonous potatos in furnace
#execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:198s} run data merge block ~ ~ ~ {Items: [{Slot:2b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:30}}]}
#execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:1} run data merge block ~ ~ ~ {Items: [{Slot:0b,id:"minecraft:air",Count:1b}]}


execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:198s} store result score @s realfurnacecount run data get block ~ ~ ~ Items[0].Count 1
execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:198s} run scoreboard players operation @s fakefurnacecount = @s realfurnacecount
execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:198s} run scoreboard players remove @s fakefurnacecount 1
execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:198s} store result entity @s DeathTime int 1 run scoreboard players get @s fakefurnacecount
execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:199s} run data modify block ~ ~ ~ Items[0].Count set from entity @s DeathTime
execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:199s} run replaceitem block ~ ~ ~ container.2 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Gift\",\"color\":\"green\"}"},HideFlags:4,Unbreakable:1b,Damage:7} 1
execute as @e[type=armor_stand,tag=furnace] at @s if block ~ ~ ~ minecraft:furnace{Items: [{Slot:0b,id:"minecraft:poisonous_potato"}],CookTime:199s} run data merge block ~ ~ ~ {CookTime:0s}
