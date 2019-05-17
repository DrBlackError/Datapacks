execute unless block ~ ~-1 ~ minecraft:birch_log run setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[type=minecraft:item,distance=..3,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/leaves_search