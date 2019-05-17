execute unless block ~ ~-1 ~ minecraft:jungle_log run setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[type=minecraft:item,distance=..4,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/leaves_search