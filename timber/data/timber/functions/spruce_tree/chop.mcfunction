### chop down tree logic ###

### destroy air ###
setblock ~ ~ ~ minecraft:air destroy

### destroy leaves ###
execute if score break_leaves timber matches 1.. run function timber:spruce_tree/leaves_search

### search for next log ###
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop