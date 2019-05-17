execute unless block ~ ~-1 ~ minecraft:oak_log run setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[type=minecraft:item,distance=..3,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/leaves_search