execute unless block ~ ~-1 ~ minecraft:dark_oak_log run setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[type=minecraft:item,distance=..3,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:dark_oak_tree/leaves_search