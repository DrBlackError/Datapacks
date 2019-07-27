summon minecraft:item ~ ~2 ~ {PickupDelay:500s,Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Blatt deines Todes\",\"color\":\"black\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}",Lore:["{\"text\":\"Bringe es zu deinem Todespunkt\",\"color\":\"gold\"}","{\"text\":\"und deine Items sind gerettet!\",\"color\":\"gold\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},sort=nearest,limit=1] at @s run data modify entity @s Item.tag.save set from entity @p[distance=..5] Inventory
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},sort=nearest,limit=1] at @s run function basicplus:gravesave

execute as @a[scores={gravedeath=1},limit=1] run tp @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},limit=1] @s
#execute as @a[scores={gravedeath=1}] run scoreboard players set @s gravedeath 0
