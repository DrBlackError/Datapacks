#LittleRetard
#Floorcrafting Wand1
#

#rezeptbeispiel
execute as @a at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:stick",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_wand_1
execute as @a at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:gold_nugget",Count:1b}},limit=1] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_wand_2
execute as @a at @s as @e[tag=!drop_ench_wand_2,type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:gold_nugget",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_wand_3
execute as @a at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:feather",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_wand_4

execute as @e[tag=drop_ench_wand_1] at @s if entity @e[tag=drop_ench_wand_2,distance=..2] if entity @e[tag=drop_ench_wand_3,distance=..2] if entity @e[tag=drop_ench_wand_4,distance=..2] if entity @e[tag=et1,distance=..2] run tag @s add ench_start_wand

execute as @e[type=item,tag=ench_start_wand] at @s run kill @e[tag=drop_ench_wand_2,distance=..1,limit=1]
execute as @e[type=item,tag=ench_start_wand] at @s run kill @e[tag=drop_ench_wand_3,distance=..1,limit=1]
execute as @e[type=item,tag=ench_start_wand] at @s run kill @e[tag=drop_ench_wand_4,distance=..1,limit=1]
execute as @e[type=item,tag=ench_start_wand] at @s run summon item ~ ~ ~ {PickupDelay:32767,Motion:[0.0,0.5,0.0],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Zauberstab\"}",Lore:["Mit diesem Zauberstab kannst du dich nach Hause teleportieren"]},Unbreakable:1b,Damage:1}}}
execute as @e[type=item,tag=ench_start_wand] at @s run particle dust 0.25 0.25 1 6 ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=item,tag=ench_start_wand] at @s run particle dust 0.25 0.25 1 6 ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=item,tag=ench_start_wand] at @s run particle dust 0.25 0.25 1 6 ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=item,tag=ench_start_wand] at @s run particle dust 0.25 0.25 1 6 ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=item,tag=ench_start_wand] at @s run particle dust 0.25 0.25 1 6 ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=item,tag=ench_start_wand] at @s run particle dust 0.25 0.25 1 6 ~ ~ ~ 0 0 0 0 1 force @a

execute as @e[type=item,tag=ench_start_wand] at @s run kill @s


scoreboard players reset @a[scores={drop_sneak=1..}] drop_sneak

# name und give /give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"TP-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Tp-Stab kannst du dich nach Hause Teleportieren"]},Unbreakable:1b,Damage:1} 1
