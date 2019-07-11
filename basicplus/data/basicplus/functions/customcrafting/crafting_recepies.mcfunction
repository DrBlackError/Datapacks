#DrBlackRat
#Crafting rezepte für Custom craftig
#main , crafting
#

##########
#Beispiel#
##########

#Detection
execute as @e[tag=crafting_barrel] at @s if data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:11b,id:"minecraft:stone",Count:1b},{Slot:12b,id:"minecraft:stone",Count:1b},{Slot:13b,id:"minecraft:stone",Count:1b},{Slot:20b,id:"minecraft:stone",Count:1b},{Slot:21b,id:"minecraft:stone",Count:1b},{Slot:22b,id:"minecraft:stone",Count:1b}]} run tag @s add crafted_cobblestone

#Item replace
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:12b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:21b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:22b,id:"minecraft:stone",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air

execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.2 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.3 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.4 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.11 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.12 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.13 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.20 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.21 air
execute as @e[tag=crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.22 air
execute as @e[tag=crafted_2_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run tag @s add crafted_1_cobblestone

execute as @e[tag=crafted_cobblestone,tag=!crafted_1_cobblestone] at @s run replaceitem block ~ ~ ~ container.15 cobblestone

#reset
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:11b,id:"minecraft:stone",Count:1b},{Slot:12b,id:"minecraft:stone",Count:1b},{Slot:13b,id:"minecraft:stone",Count:1b},{Slot:20b,id:"minecraft:stone",Count:1b},{Slot:21b,id:"minecraft:stone",Count:1b},{Slot:22b,id:"minecraft:stone",Count:1b}]} run tag @s remove crafted_cobblestone
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:11b,id:"minecraft:stone",Count:1b},{Slot:12b,id:"minecraft:stone",Count:1b},{Slot:13b,id:"minecraft:stone",Count:1b},{Slot:20b,id:"minecraft:stone",Count:1b},{Slot:21b,id:"minecraft:stone",Count:1b},{Slot:22b,id:"minecraft:stone",Count:1b}]} run tag @s remove crafted_1_cobblestone

execute as @e[tag=crafting_barrel,tag=crafted_2_cobblestone] at @s run tag @s remove crafted_2_cobblestone
execute as @e[tag=crafting_barrel,tag=crafted_cobblestone,tag=!crafted_2_cobblestone] at @s run tag @s add crafted_2_cobblestone



#############
#Wood_bucket#
#############

execute as @e[tag=crafting_barrel] at @s if data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:oak_planks",Count:1b},{Slot:13b,id:"minecraft:oak_planks",Count:1b},{Slot:21b,id:"minecraft:oak_planks",Count:1b}]} run tag @s add crafted_wood_bucket

#Item replace
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:oak_planks",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:oak_planks",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:21b,id:"minecraft:oak_planks",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air

execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.2 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.3 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.4 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.11 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.12 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.13 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.20 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.21 air
execute as @e[tag=crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.22 air
execute as @e[tag=crafted_2_wood_bucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,}]} run tag @s add crafted_1_wood_bucket

execute as @e[tag=crafted_wood_bucket,tag=!crafted_1_wood_bucket] at @s run replaceitem block ~ ~ ~ container.15 carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Wassereimer\",\"italic\":\"false\"}"},HideFlags:4}

#reset
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:oak_planks",Count:1b},{Slot:13b,id:"minecraft:oak_planks",Count:1b},{Slot:21b,id:"minecraft:oak_planks",Count:1b}]} run tag @s remove crafted_wood_bucket
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:oak_planks",Count:1b},{Slot:13b,id:"minecraft:oak_planks",Count:1b},{Slot:21b,id:"minecraft:oak_planks",Count:1b}]} run tag @s remove crafted_1_wood_bucket

execute as @e[tag=crafting_barrel,tag=crafted_2_wood_bucket] at @s run tag @s remove crafted_2_wood_bucket
execute as @e[tag=crafting_barrel,tag=crafted_wood_bucket,tag=!crafted_2_wood_bucket] at @s run tag @s add crafted_2_wood_bucket



################
#Energy Crystal#
################

#Detection
execute as @e[tag=crafting_barrel] at @s if data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:diamond",Count:1b},{Slot:11b,id:"minecraft:diamond",Count:1b},{Slot:12b,id:"minecraft:redstone_block",Count:1b},{Slot:13b,id:"minecraft:diamond",Count:1b},{Slot:20b,id:"minecraft:diamond",Count:1b},{Slot:21b,id:"minecraft:diamond",Count:1b},{Slot:22b,id:"minecraft:diamond",Count:1b}]} run tag @s add crafted_ent

#Item replace
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:12b,id:"minecraft:redstone_block",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:21b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:22b,id:"minecraft:diamond",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air

execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.3 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.2 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.4 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.11 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.12 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.13 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.20 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.21 air
execute as @e[tag=crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.22 air
execute as @e[tag=crafted_2_ent] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:redstone_block",Count:1b}]} run tag @s add crafted_1_ent

execute as @e[tag=crafted_ent,tag=!crafted_1_ent] at @s run replaceitem block ~ ~ ~ container.15 redstone_block{display:{Name:'{"text":"Energy Crystal"}'},sort:"energy"}
#reset
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:diamond",Count:1b},{Slot:11b,id:"minecraft:diamond",Count:1b},{Slot:12b,id:"minecraft:redstone_block",Count:1b},{Slot:13b,id:"minecraft:diamond",Count:1b},{Slot:20b,id:"minecraft:diamond",Count:1b},{Slot:21b,id:"minecraft:diamond",Count:1b},{Slot:22b,id:"minecraft:diamond",Count:1b}]} run tag @s remove crafted_ent
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:diamond",Count:1b},{Slot:11b,id:"minecraft:diamond",Count:1b},{Slot:12b,id:"minecraft:redstone_block",Count:1b},{Slot:13b,id:"minecraft:diamond",Count:1b},{Slot:20b,id:"minecraft:diamond",Count:1b},{Slot:21b,id:"minecraft:diamond",Count:1b},{Slot:22b,id:"minecraft:diamond",Count:1b}]} run tag @s remove crafted_1_ent

execute as @e[tag=crafting_barrel,tag=crafted_2_ent] at @s run tag @s remove crafted_2_ent
execute as @e[tag=crafting_barrel,tag=crafted_ent,tag=!crafted_2_ent] at @s run tag @s add crafted_2_ent

#########
#appletest#
#########

#Detection
execute as @e[tag=crafting_barrel] at @s if data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stick",Count:1b},{Slot:3b,id:"minecraft:daylight_detector",Count:1b},{Slot:4b,id:"minecraft:stick",Count:1b},{Slot:11b,id:"minecraft:redstone_block",Count:1b},{Slot:12b,id:"minecraft:redstone_block",Count:1b},{Slot:13b,id:"minecraft:redstone_block",Count:1b},{Slot:20b,id:"minecraft:stick",Count:1b},{Slot:21b,id:"minecraft:stick",Count:1b},{Slot:22b,id:"minecraft:stick",Count:1b}]} run tag @s add crafted_appletest

#Item replace
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stick",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:daylight_detector",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:stick",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:redstone_block",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:12b,id:"minecraft:redstone_block",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:redstone_block",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:20b,id:"minecraft:stick",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:21b,id:"minecraft:stick",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:22b,id:"minecraft:stick",Count:1b}]} if data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run replaceitem block ~ ~ ~ container.15 air

execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.2 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.3 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.4 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.11 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.12 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.13 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.20 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.21 air
execute as @e[tag=crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.22 air
execute as @e[tag=crafted_2_appletest] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:apple",Count:1b}]} run tag @s add crafted_1_appletest

execute as @e[tag=crafted_appletest,tag=!crafted_1_appletest] at @s run replaceitem block ~ ~ ~ container.15 apple

#reset
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stick",Count:1b},{Slot:3b,id:"minecraft:daylight_detector",Count:1b},{Slot:4b,id:"minecraft:stick",Count:1b},{Slot:11b,id:"minecraft:redstone_block",Count:1b},{Slot:12b,id:"minecraft:redstone_block",Count:1b},{Slot:13b,id:"minecraft:redstone_block",Count:1b},{Slot:20b,id:"minecraft:stick",Count:1b},{Slot:21b,id:"minecraft:stick",Count:1b},{Slot:22b,id:"minecraft:stick",Count:1b}]} run tag @s remove crafted_appletest
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stick",Count:1b},{Slot:3b,id:"minecraft:daylight_detector",Count:1b},{Slot:4b,id:"minecraft:stick",Count:1b},{Slot:11b,id:"minecraft:redstone_block",Count:1b},{Slot:12b,id:"minecraft:redstone_block",Count:1b},{Slot:13b,id:"minecraft:redstone_block",Count:1b},{Slot:20b,id:"minecraft:stick",Count:1b},{Slot:21b,id:"minecraft:stick",Count:1b},{Slot:22b,id:"minecraft:stick",Count:1b}]} run tag @s remove crafted_1_appletest

execute as @e[tag=crafting_barrel,tag=crafted_2_appletest] at @s run tag @s remove crafted_2_appletest
execute as @e[tag=crafting_barrel,tag=crafted_appletest,tag=!crafted_2_appletest] at @s run tag @s add crafted_2_appletest
#
