### chop down tree logic ###

### destroy air ###
setblock ~ ~ ~ minecraft:air destroy

### destroy leaves ###
execute if score break_leaves timber matches 1.. run function timber:dark_oak_tree/leaves_search

### search for next log ###
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop