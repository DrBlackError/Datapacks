### reset ###
scoreboard players set validate timber 0

### validate tree above the fresh chopped log if a log is there ###
execute if score @s t.sneak_time matches 0 as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:oak_log run function timber:oak_tree/validate
execute if score @s t.sneak_time matches 0 as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/validate
execute if score @s t.sneak_time matches 0 as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/validate
execute if score @s t.sneak_time matches 0 as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:jungle_log run function timber:jungle_tree/validate
execute if score @s t.sneak_time matches 0 as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/validate
execute if score @s t.sneak_time matches 0 as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/validate

### chop tree above the fresh chopped log if a log is there ###
execute if score validate timber matches 1.. as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:oak_log run function timber:oak_tree/chop
execute if score validate timber matches 1.. as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function timber:spruce_tree/chop
execute if score validate timber matches 1.. as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:birch_log run function timber:birch_tree/chop
execute if score validate timber matches 1.. as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:jungle_log run function timber:jungle_tree/chop
execute if score validate timber matches 1.. as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:acacia_log run function timber:acacia_tree/chop
execute if score validate timber matches 1.. as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dark_oak_log run function timber:dark_oak_tree/chop

### wear out tool ###
execute store result score durability timber run data get entity @s SelectedItem.tag.Damage
scoreboard players remove durability timber 1
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run scoreboard players add durability timber 1
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run scoreboard players add durability timber 1
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run scoreboard players add durability timber 1
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run scoreboard players add durability timber 1
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run scoreboard players add durability timber 1
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run scoreboard players add durability timber 1
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get durability timber

### break axe if worn out ###
execute if score @s t.wooden_axe matches 1.. if score durability timber matches 59.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t.wooden_axe matches 1.. if score durability timber matches 59.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t.stone_axe matches 1.. if score durability timber matches 131.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t.stone_axe matches 1.. if score durability timber matches 131.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t.iron_axe matches 1.. if score durability timber matches 250.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t.iron_axe matches 1.. if score durability timber matches 250.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t.golden_axe matches 1.. if score durability timber matches 32.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t.golden_axe matches 1.. if score durability timber matches 32.. run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s t.diamond_axe matches 1.. if score durability timber matches 1561.. run replaceitem entity @s weapon.mainhand minecraft:air
execute if score @s t.diamond_axe matches 1.. if score durability timber matches 1561.. run playsound minecraft:entity.item.break player @a ~ ~ ~

### reset scores ###
scoreboard players set @s t.wooden_axe 0
scoreboard players set @s t.stone_axe 0
scoreboard players set @s t.iron_axe 0
scoreboard players set @s t.golden_axe 0
scoreboard players set @s t.diamond_axe 0