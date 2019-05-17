#execute as @e[nbt={Item:{tag:{ench:["slowfall"]}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"Langsamer-Fall\"}"
#execute as @e[nbt={Item:{tag:{ench:["fireres"]}}}] run data modify entity @s Item.tag.display.Lore append value "{\"text\":\"Feuer-Resistenz\"}"
#execute as @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] at @s if entity @e[nbt={Item:{tag:{ench:["slowfall"]}}},distance=..1,limit=1] run data modify entity @s Item.tag.ench append value slowfall
#execute as @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] at @s if entity @e[nbt={Item:{tag:{ench:["fireres"]}}},distance=..1,limit=1] run data modify entity @s Item.tag.ench append value fireres
execute as @a[nbt={Inventory:[{Slot:102b,tag:{ench:["slowfall"]}}]}] run effect give @s minecraft:slow_falling 1 1 true
execute as @a[nbt={Inventory:[{Slot:102b,tag:{ench:["fireres"]}}]}] run effect give @s minecraft:fire_resistance 1 1 true


give @p minecraft:enchanted_book{ench:["slowfall"],display:{Name:"{\"text\":\"Buch des Langsamen Falls\",\"color\":\"aqua\"}"},HideFlags:63} 1
give @p minecraft:enchanted_book{ench:["fireresistance"],display:{Name:"{\"text\":\"Buch der Feuerresistenz\",\"color\":\"dark_red\"}"},HideFlags:63} 1
