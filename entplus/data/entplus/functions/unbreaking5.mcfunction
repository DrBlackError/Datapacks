execute as @r at @s as @e[type=item,distance=..6] at @s if block ~ ~-1 ~ enchanting_table run data merge entity @s {PickupDelay:32767}
execute as @r[scores={drop_sneak=1..}] at @s as @e[type=item,distance=..6] at @s run data merge entity @s {PickupDelay:0}

#rezeptbeispiel
execute as @r at @s as @e[limit=1,type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:["Dieses buch trägt eine überdurchschnittliche Kraft"]},StoredEnchantments:[{id:"minecraft:unbreaking",lvl:4}]}}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add drop_enchunbreaking_4_1
execute as @r at @s as @e[tag=!drop_enchunbreaking_4_1,type=item,distance=..6,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:["Dieses buch trägt eine überdurchschnittliche Kraft"]},StoredEnchantments:[{id:"minecraft:unbreaking",lvl:4}]}}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add drop_enchunbreaking_4_2

execute as @e[tag=drop_enchunbreaking_4_1] at @s if entity @e[tag=drop_enchunbreaking_4_2,distance=..1] run tag @s add craft_enchunbreaking_5

execute as @e[type=item,tag=craft_enchunbreaking_5] at @s run kill @e[tag=drop_enchunbreaking_4_2,distance=..1,limit=1]
execute as @e[type=item,tag=craft_enchunbreaking_5] at @s run playsound minecraft:block.wood.place master @a
execute as @e[type=item,tag=craft_enchunbreaking_5] at @s run function entplus:lightningbolt
execute as @e[type=item,tag=craft_enchunbreaking_5] at @s run data merge entity @s {Motion:[0.0d,0.3d,0.0d],Tags:[],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:["Dieses buch trägt eine überdurchschnittliche Kraft"]},StoredEnchantments:[{id:"minecraft:unbreaking",lvl:5}]}}}
scoreboard players reset @a[scores={drop_sneak=1..}] drop_sneak
