### chop down tree logic ###

### destroy air ###
setblock ~ ~ ~ minecraft:air destroy

### destroy leaves ###
execute if score break_leaves timber matches 1.. run function timber:acacia_tree/leaves_search

### search for next log ###
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop