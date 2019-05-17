#execute as @e[type=armor_stand,name=smasher] at @s if block ~ ~-1 ~ minecraft:stonecutter if entity @e[nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] if block ~ ~1 ~ minecraft:piston[extended=true,facing=down] run say hey
#execute as @e[type=armor_stand,name=smasher] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gravel",Count:1b}}
#kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}]
#
#execute as @e[type=armor_stand,name=smasher] at @s if block ~ ~-1 ~ minecraft:stonecutter if entity @e[nbt={Item:{id:"minecraft:cobblestone",Count:32b}}] if block ~ ~1 ~ minecraft:piston[extended=true,facing=down] run say hey
#execute as @e[type=armor_stand,name=smasher] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gravel",Count:32b}}
#kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",Count:32b}}]
#
#execute as @e[type=armor_stand,name=smasher] at @s if block ~ ~-1 ~ minecraft:stonecutter if entity @e[nbt={Item:{id:"minecraft:cobblestone",Count:64b}}] if block ~ ~1 ~ minecraft:piston[extended=true,facing=down] run say hey
#execute as @e[type=armor_stand,name=smasher] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gravel",Count:64b}}
#kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",Count:64b}}]
