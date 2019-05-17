execute unless block ~ ~-1 ~ minecraft:spruce_log run setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[type=minecraft:item,distance=..4,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:spruce_tree/leaves_search