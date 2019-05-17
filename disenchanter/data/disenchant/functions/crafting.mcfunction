#rezeptbeispiel
execute as @r at @s as @e[type=item,nbt={Item:{id: "minecraft:enchanted_book", Count: 1b}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add disenchanter_1
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id: "minecraft:dispenser", Count:1b}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add disenchanter_2
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id: "minecraft:nether_star", Count:1b}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add disenchanter_3
execute as @r at @s as @e[type=item,distance=..6,nbt={Item:{id: "minecraft:enchanting_table", Count:1b}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add disenchanter_4


execute as @e[tag=disenchanter_1] at @s if entity @e[tag=disenchanter_2,distance=..1] if entity @e[tag=disenchanter_3,distance=..1] if entity @e[tag=disenchanter_4,distance=..1] run tag @s add craft_disenchanter

execute as @e[type=item,tag=craft_disenchanter] at @s run kill @e[tag=disenchanter_2,distance=..1,limit=1]
execute as @e[type=item,tag=craft_disenchanter] at @s run kill @e[tag=disenchanter_3,distance=..1,limit=1]
execute as @e[type=item,tag=craft_disenchanter] at @s run kill @e[tag=disenchanter_4,distance=..1,limit=1]
execute as @e[type=item,tag=craft_disenchanter] at @s run playsound minecraft:block.wood.place master @a
execute as @e[type=item,tag=craft_disenchanter] at @s run data merge entity @s {Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:"{\"text\":\"Disenchanter\",\"color\":\"dark_purple\"}",Lore:["Destroys Whatever is in it"]},EntityTag:{NoGravity:1b,Silent:1b,NoAI:1b,Motion:[0.0d,0.3d,0.0d],Tags:["disenchant"]}}}}
