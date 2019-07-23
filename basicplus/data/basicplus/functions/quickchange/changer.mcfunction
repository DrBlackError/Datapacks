execute as @a[tag=readyforchange] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..1] run tag @s add changer
execute as @a[tag=readyforchange] at @s if entity @e[type=minecraft:armor_stand,tag=quickarmor,distance=..0.5] at @e[type=armor_stand,distance=..1] run setblock ~ ~2 ~ minecraft:shulker_box
data modify block ~ ~2 ~ Items[{Slot:0b}] merge from entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[0]
data modify block ~ ~2 ~ Items[{Slot:1b}] merge from entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[1]
data modify block ~ ~2 ~ Items[{Slot:2b}] merge from entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[2]
data modify block ~ ~2 ~ Items[{Slot:3b}] merge from entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[3]
#Own Items to Armorstand
data merge entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] {ArmorItems:[{},{},{},{}]}
data modify entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[0] merge from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[1] merge from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[2] merge from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=minecraft:armor_stand,distance=..2,tag=quickarmor,limit=1] ArmorItems[3] merge from entity @s Inventory[{Slot:103b}]
loot replace entity @s armor.feet mine ~ ~2 ~ minecraft:air{drop_contents:1b}
setblock ~ ~2 ~ air
