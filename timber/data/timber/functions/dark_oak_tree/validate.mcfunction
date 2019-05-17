### leaves around the log? ###
#yes - note it
execute if block ~ ~ ~1 minecraft:dark_oak_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~ ~ ~-1 minecraft:dark_oak_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~1 ~ ~ minecraft:dark_oak_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~-1 ~ ~ minecraft:dark_oak_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~ ~1 ~ minecraft:dark_oak_leaves[persistent=false] run scoreboard players set validate timber 1
#no - goto next log
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate