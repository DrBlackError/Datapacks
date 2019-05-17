#Flololilan
#Ritual erkennen und ausführen
#??
execute as @e[type=armor_stand,tag=et1] at @s unless block ~ ~-1 ~ minecraft:enchanting_table run kill @s
execute as @r[tag=night] at @s as @e[type=item,distance=..6] at @s if block ~ ~-1 ~ enchanting_table run data merge entity @s {PickupDelay:32767}
execute as @r[scores={drop_sneak=1..}] at @s as @e[type=item,distance=..6] at @s run data merge entity @s {PickupDelay:0}

#rezeptbeispiel
execute as @r[tag=night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:dirt",Count:1b}}] at @s if block ~ ~ ~ enchanting_table unless entity @e[type=minecraft:armor_stand,name=+,distance=..2] run tag @s add drop_ench_rite_1
execute as @r[tag=night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:water_bucket",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_rite_2
execute as @r[tag=night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:flint_and_steel",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_rite_3
execute as @r[tag=night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:feather",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_rite_4

execute as @r[tag=!night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:dirt",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_rite_-1
execute as @r[tag=!night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:water_bucket",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_rite_-2
execute as @r[tag=!night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:flint_and_steel",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_rite_-3
execute as @r[tag=!night] at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:feather",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add drop_ench_rite_-4

execute as @e[tag=drop_ench_rite_1] at @s if entity @e[tag=drop_ench_rite_2,distance=..2] if entity @e[tag=drop_ench_rite_3,distance=..2] if entity @e[tag=drop_ench_rite_4,distance=..2] run tag @s add ench_start_rite
execute as @e[tag=drop_ench_rite_-1] at @s if entity @e[tag=drop_ench_rite_-2,distance=..2] if entity @e[tag=drop_ench_rite_-3,distance=..2] if entity @e[tag=drop_ench_rite_-4,distance=..2] run tellraw @p {"text":"Etwas passt nicht......","color":"blue","bold":false,"italic":true,"extra":[{"text":"[Hilfe]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":"Versuch es bei Nacht"}}]}

execute as @e[type=item,tag=ench_start_rite] at @s run kill @e[tag=drop_ench_rite_2,distance=..1,limit=1]
execute as @e[type=item,tag=ench_start_rite] at @s run kill @e[tag=drop_ench_rite_3,distance=..1,limit=1]
execute as @e[type=item,tag=ench_start_rite] at @s run kill @e[tag=drop_ench_rite_4,distance=..1,limit=1]
execute as @e[type=item,tag=ench_start_rite] at @s run function entplus:ritual
execute as @e[type=item,tag=ench_start_rite] at @s run weather thunder
execute as @e[type=item,tag=ench_start_rite] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=item,tag=ench_start_rite] at @a run playsound entity.wolf.howl master @a ~ ~ ~ 1 0.8 1
#execute as @e[type=item,tag=ench_start_rite] at @s as @a at @s run function entplus:lightningbolt

execute as @e[type=item,tag=ench_start_rite] at @s align xyz positioned ~0.5 ~1 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["et1"],CustomName:"{\"text\":\"+\",\"color\":\"dark_blue\"}"}
execute as @e[type=item,tag=ench_start_rite] at @s run tellraw @a[distance=..5] {"text":"Leg dich nicht mit Sachen an die du nicht verstehst!!!","color":"dark_purple"}
execute as @e[type=item,tag=ench_start_rite] at @s run tag @p[sort=nearest,distance=..3,limit=1] add z1
execute as @e[type=item,tag=ench_start_rite] at @s run tellraw @a[distance=6..] ["",{"selector":"@p"},{"text":" hat gerade versucht Hobby-Magier zu werden","color":"dark_purple"}]
execute as @e[type=item,tag=ench_start_rite] at @s run kill @s


scoreboard players reset @a[scores={drop_sneak=1..}] drop_sneak
