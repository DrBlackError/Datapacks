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

execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.2 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.3 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.4 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.11 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.12 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.13 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.20 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.21 air
execute as @e[tag=crafted_1_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run replaceitem block ~ ~ ~ container.22 air
execute as @e[tag=crafted_cobblestone] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:cobblestone",Count:1b}]} run tag @s add crafted_1_cobblestone

#reset
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:11b,id:"minecraft:stone",Count:1b},{Slot:12b,id:"minecraft:stone",Count:1b},{Slot:13b,id:"minecraft:stone",Count:1b},{Slot:20b,id:"minecraft:stone",Count:1b},{Slot:21b,id:"minecraft:stone",Count:1b},{Slot:22b,id:"minecraft:stone",Count:1b}]} run tag @s remove crafted_cobblestone
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:11b,id:"minecraft:stone",Count:1b},{Slot:12b,id:"minecraft:stone",Count:1b},{Slot:13b,id:"minecraft:stone",Count:1b},{Slot:20b,id:"minecraft:stone",Count:1b},{Slot:21b,id:"minecraft:stone",Count:1b},{Slot:22b,id:"minecraft:stone",Count:1b}]} run tag @s remove crafted_1_cobblestone

execute as @e[tag=crafted_cobblestone] at @s run replaceitem block ~ ~ ~ container.15 cobblestone




#############
#Wood_bucket#
#############

#Detection
execute as @e[tag=crafting_barrel] at @s if data block ~ ~ ~ {Items: [{Slot: 11b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 13b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 21b, id: "minecraft:oak_planks", Count: 1b}]} run tag @s add crafted_woodbucket

#Item replace

execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.2 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.3 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.4 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.11 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.12 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.13 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.20 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.21 air
execute as @e[tag=crafted_1_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run replaceitem block ~ ~ ~ container.22 air
execute as @e[tag=crafted_woodbucket] at @s unless data block ~ ~ ~ {Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,CustomModelData:5}]} run tag @s add crafted_1_woodbucket

#reset
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items: [{Slot: 11b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 13b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 21b, id: "minecraft:oak_planks", Count: 1b}]} run tag @s remove crafted_woodbucket
execute as @e[tag=crafting_barrel] at @s unless data block ~ ~ ~ {Items: [{Slot: 11b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 13b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 21b, id: "minecraft:oak_planks", Count: 1b}]} run tag @s remove crafted_1_woodbucket

execute as @e[tag=crafted_woodbucket] at @s run replaceitem block ~ ~ ~ container.15 carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Wassereimer\",\"italic\":\"false\"}"},HideFlags:4}
