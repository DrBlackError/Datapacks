### leaves around the log? ###
#yes - note it
execute if block ~ ~ ~1 minecraft:birch_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~ ~ ~-1 minecraft:birch_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~1 ~ ~ minecraft:birch_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~-1 ~ ~ minecraft:birch_leaves[persistent=false] run scoreboard players set validate timber 1
execute if block ~ ~1 ~ minecraft:birch_leaves[persistent=false] run scoreboard players set validate timber 1
#no - goto next log
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if block ~ ~1 ~ minecraft:air positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate