execute unless block ~ ~-1 ~ minecraft:acacia_log run setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[type=minecraft:item,distance=..3,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/leaves_search