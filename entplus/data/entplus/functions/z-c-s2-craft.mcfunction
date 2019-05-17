#DrBlackRat
#herstellung des Blitz-Stabes
#entplus/main

#norden
#testen ob es geht
execute as @e[tag=et1] at @s if block ~ ~-1 ~-3 cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s2-n
execute as @e[tag=et1,tag=zc1-s2-n] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:phantom_membrane"}}] run tag @s add zc2-s2-n
execute as @e[tag=et1,tag=zc2-s2-n] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:quartz"}}] run tag @s add zc3-s2-n
execute as @e[tag=et1,tag=zc3-s2-n] at @s if block ~ ~-2 ~-3 fire run tag @s add zc4-s2-n

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s2-n] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~-1.5 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-s2-n] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s2-n] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s2-n] at @s run summon minecraft:item_frame ~ ~ ~-1 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-n] at @s run summon minecraft:item_frame ~ ~ ~-2 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-n] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-s2-n] at @s run summon item ~ ~ ~-1.5 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Blitz-Stab\",\"color\":\"dark_purple\"}",Lore:["Wenn die blaue Wolke ein Mob , Spieler oder Block trift wird ein Blitz gespawnt"]},Unbreakable:1b,Damage:3}}}
execute as @e[tag=et1,tag=zc4-s2-n] at @s run tag @p add s2
execute as @e[tag=et1,tag=zc4-s2-n] at @s run setblock ~ ~-1 ~-3 cauldron
execute as @e[tag=et1,tag=zc4-s2-n] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Blitz-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s2-n] remove zc1-s2-n
tag @e[tag=et1,tag=zc2-s2-n] remove zc2-s2-n
tag @e[tag=et1,tag=zc3-s2-n] remove zc3-s2-n
tag @e[tag=et1,tag=zc4-s2-n] remove zc4-s2-n


#süden
#testen ob es geht
execute as @e[tag=et1] at @s if block ~ ~-1 ~3 cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s2-s
execute as @e[tag=et1,tag=zc1-s2-s] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:phantom_membrane"}}] run tag @s add zc2-s2-s
execute as @e[tag=et1,tag=zc2-s2-s] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:quartz"}}] run tag @s add zc3-s2-s
execute as @e[tag=et1,tag=zc3-s2-s] at @s if block ~ ~-2 ~3 fire run tag @s add zc4-s2-s

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s2-s] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~1.5 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-s2-s] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s2-s] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s2-s] at @s run summon minecraft:item_frame ~ ~ ~1 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-s] at @s run summon minecraft:item_frame ~ ~ ~2 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-s] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-s2-s] at @s run summon item ~ ~ ~1.5 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Blitz-Stab\",\"color\":\"dark_purple\"}",Lore:["Wenn die blaue Wolke ein Mob , Spieler oder Block trift wird ein Blitz gespawnt"]},Unbreakable:1b,Damage:3}}}
execute as @e[tag=et1,tag=zc4-s2-s] at @s run tag @p add s2
execute as @e[tag=et1,tag=zc4-s2-s] at @s run setblock ~ ~-1 ~3 cauldron
execute as @e[tag=et1,tag=zc4-s2-s] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Blitz-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s2-s] remove zc1-s2-s
tag @e[tag=et1,tag=zc2-s2-s] remove zc2-s2-s
tag @e[tag=et1,tag=zc3-s2-s] remove zc3-s2-s
tag @e[tag=et1,tag=zc4-s2-s] remove zc4-s2-s


#westen
#testen ob es geht
execute as @e[tag=et1] at @s if block ~-3 ~-1 ~ cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s2-w
execute as @e[tag=et1,tag=zc1-s2-w] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:phantom_membrane"}}] run tag @s add zc2-s2-w
execute as @e[tag=et1,tag=zc2-s2-w] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:quartz"}}] run tag @s add zc3-s2-w
execute as @e[tag=et1,tag=zc3-s2-w] at @s if block ~-3 ~-2 ~ fire run tag @s add zc4-s2-w

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s2-w] at @s run particle minecraft:dust 0 0 1 1 ~-1.5 ~ ~ 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-s2-w] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s2-w] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s2-w] at @s run summon minecraft:item_frame ~-1 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-w] at @s run summon minecraft:item_frame ~-2 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-w] at @s run kill @e[type=item,distance=..4]
execute as @e[tag=et1,tag=zc4-s2-w] at @s run summon item ~-1.5 ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Blitz-Stab\",\"color\":\"dark_purple\"}",Lore:["Wenn die blaue Wolke ein Mob , Spieler oder Block trift wird ein Blitz gespawnt"]},Unbreakable:1b,Damage:3}}}
execute as @e[tag=et1,tag=zc4-s2-w] at @s run tag @p add s2
execute as @e[tag=et1,tag=zc4-s2-w] at @s run setblock ~-3 ~-1 ~ cauldron
execute as @e[tag=et1,tag=zc4-s2-w] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Blitz-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s2-w] remove zc1-s2-w
tag @e[tag=et1,tag=zc2-s2-w] remove zc2-s2-w
tag @e[tag=et1,tag=zc3-s2-w] remove zc3-s2-w
tag @e[tag=et1,tag=zc4-s2-w] remove zc4-s2-w


#osten
#testen ob es geht
execute as @e[tag=et1] at @s if block ~3 ~-1 ~ cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s2-e
execute as @e[tag=et1,tag=zc1-s2-e] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:phantom_membrane"}}] run tag @s add zc2-s2-e
execute as @e[tag=et1,tag=zc2-s2-e] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:quartz"}}] run tag @s add zc3-s2-e
execute as @e[tag=et1,tag=zc3-s2-e] at @s if block ~3 ~-2 ~ fire run tag @s add zc4-s2-e

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s2-e] at @s run particle minecraft:dust 0 0 1 1 ~1.5 ~ ~ 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-s2-e] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s2-e] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s2-e] at @s run summon minecraft:item_frame ~1 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-e] at @s run summon minecraft:item_frame ~2 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s2-e] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-s2-e] at @s run summon item ~1.5 ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Blitz-Stab\",\"color\":\"dark_purple\"}",Lore:["Wenn die blaue Wolke ein Mob , Spieler oder Block trift wird ein Blitz gespawnt"]},Unbreakable:1b,Damage:3}}}
execute as @e[tag=et1,tag=zc4-s2-e] at @s run tag @p add s2
execute as @e[tag=et1,tag=zc4-s2-e] at @s run setblock ~3 ~-1 ~ cauldron
execute as @e[tag=et1,tag=zc4-s2-e] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Blitz-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s2-e] remove zc1-s2-e
tag @e[tag=et1,tag=zc2-s2-e] remove zc2-s2-e
tag @e[tag=et1,tag=zc3-s2-e] remove zc3-s2-e
tag @e[tag=et1,tag=zc4-s2-e] remove zc4-s2-e
