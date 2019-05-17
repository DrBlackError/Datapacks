#Rezept + tags den items adden
execute as @r at @s as @e[limit=1,type=item,nbt={Item:{id: "minecraft:diamond_pickaxe", Count: 1b}}] at @s if block ~ ~-1 ~ crafting_table run tag @s add craft_miner1
execute as @r at @s as @e[limit=1,type=item,nbt={Item:{id: "minecraft:diamond_shovel", Count: 1b}}] at @s if block ~ ~-1 ~ crafting_table run tag @s add craft_miner2
execute as @r at @s as @e[limit=1,type=item,nbt={Item:{id: "minecraft:diamond_axe", Count: 1b}}] at @s if block ~ ~-1 ~ crafting_table run tag @s add craft_miner3
execute as @r at @s as @e[limit=1,type=item,nbt={Item:{id: "minecraft:iron_block", Count: 1b}}] at @s if block ~ ~-1 ~ crafting_table run tag @s add craft_miner4

#wenn alles da dann tag adden
execute as @e[tag=craft_miner1] at @s if entity @e[tag=craft_miner2,distance=..1] if entity @e[tag=craft_miner3,distance=..1] if entity @e[tag=craft_miner4,distance=..1] run tag @s add craft_miner
#Die anderen Items killen
execute as @e[type=item,tag=craft_miner] at @s run kill @e[tag=craft_miner2,distance=..1,limit=1]
execute as @e[type=item,tag=craft_miner] at @s run kill @e[tag=craft_miner3,distance=..1,limit=1]
execute as @e[type=item,tag=craft_miner] at @s run kill @e[tag=craft_miner4,distance=..1,limit=1]
#Sound abspielen und es so aussehen lassen aus würden aus den 4 Items 1 werden
execute as @e[type=item,tag=craft_miner] at @s run playsound minecraft:block.wood.place master @a
execute as @e[type=item,tag=craft_miner] at @s run data merge entity @s {Motion:[0.0d,0.3d,0.0d],Tags:[],Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:"{\"text\":\"Bohrer\",\"color\":\"dark_purple\"}",Lore:["Bohrt ein Loch... was sonst?"]}}}}
