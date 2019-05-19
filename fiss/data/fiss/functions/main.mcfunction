#sort_redstone items
execute as @e[type=armor_stand,tag=sort_sorter] at @s run tp @e[type=item,nbt={Item:{tag:{sort:redstone}}},distance=..1,limit=1] @e[type=armor_stand,tag=sort_redstone,limit=1,sort=nearest]
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone_block"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:repeater"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:comparator"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dispenser"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dropper"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:piston"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:sticky_piston"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:hopper"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:observer"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:tnt"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:note_block"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:trapped_chest"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
#-
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_button"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_button"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_button"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_button"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_button"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_button"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
#-
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:light_weighted_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:heavy_weighted_pressure_plate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
#-
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_trapdoor"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_trapdoor"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_trapdoor"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_trapdoor"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_trapdoor"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_trapdoor"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_trapdoor"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
#-
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_fence_gate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_fence_gate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_fence_gate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_fence_gate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_fence_gate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_fence_gate"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
#-
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_door"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_door"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_door"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_door"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_door"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_door"}},nbt=!{Item:{tag:{sort:redstone}}}] run data merge entity @s {Item:{tag:{sort:redstone}}}
