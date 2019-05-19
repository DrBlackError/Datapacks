#DrBlackRat
#herstellung des feuer-stabes
#mplus/main

#norden
#testen ob es geht
execute as @e[tag=et1] at @s if block ~ ~-1 ~-3 cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s1-n
execute as @e[tag=et1,tag=zc1-s1-n] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:flint_and_steel"}}] run tag @s add zc2-s1-n
execute as @e[tag=et1,tag=zc2-s1-n] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:magma_cream"}}] run tag @s add zc3-s1-n
execute as @e[tag=et1,tag=zc3-s1-n] at @s if block ~ ~-2 ~-3 fire run tag @s add zc4-s1-n

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s1-n] at @s run particle minecraft:flame ~ ~ ~-1.5 0.8 0.5 0.8 0 2000
execute as @e[tag=et1,tag=zc4-s1-n] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s1-n] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s1-n] at @s run summon minecraft:item_frame ~ ~ ~-1 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-n] at @s run summon minecraft:item_frame ~ ~ ~-2 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-n] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-s1-n] at @s run summon item ~ ~ ~-1.5 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Feuer-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Feuer-Stab kannst du Feuer scheißen und Gegner in brand setzen"]},Unbreakable:1b,Damage:2}}}
execute as @e[tag=et1,tag=zc4-s1-n] at @s run tag @p add s1
execute as @e[tag=et1,tag=zc4-s1-n] at @s run setblock ~ ~-1 ~-3 cauldron
execute as @e[tag=et1,tag=zc4-s1-n] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Feuer-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s1-n] remove zc1-s1-n
tag @e[tag=et1,tag=zc2-s1-n] remove zc2-s1-n
tag @e[tag=et1,tag=zc3-s1-n] remove zc3-s1-n
tag @e[tag=et1,tag=zc4-s1-n] remove zc4-s1-n


#süden
#testen ob es geht
execute as @e[tag=et1] at @s if block ~ ~-1 ~3 cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s1-s
execute as @e[tag=et1,tag=zc1-s1-s] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:flint_and_steel"}}] run tag @s add zc2-s1-s
execute as @e[tag=et1,tag=zc2-s1-s] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:magma_cream"}}] run tag @s add zc3-s1-s
execute as @e[tag=et1,tag=zc3-s1-s] at @s if block ~ ~-2 ~3 fire run tag @s add zc4-s1-s

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s1-s] at @s run particle minecraft:flame ~ ~ ~1.5 0.8 0.5 0.8 0 2000
execute as @e[tag=et1,tag=zc4-s1-s] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s1-s] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s1-s] at @s run summon minecraft:item_frame ~ ~ ~1 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-s] at @s run summon minecraft:item_frame ~ ~ ~2 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-s] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-s1-s] at @s run summon item ~ ~ ~1.5 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Feuer-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Feuer-Stab kannst du Feuer scheißen und Gegner in brand setzen"]},Unbreakable:1b,Damage:2}}}
execute as @e[tag=et1,tag=zc4-s1-s] at @s run tag @p add s1
execute as @e[tag=et1,tag=zc4-s1-s] at @s run setblock ~ ~-1 ~3 cauldron
execute as @e[tag=et1,tag=zc4-s1-s] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Feuer-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s1-s] remove zc1-s1-s
tag @e[tag=et1,tag=zc2-s1-s] remove zc2-s1-s
tag @e[tag=et1,tag=zc3-s1-s] remove zc3-s1-s
tag @e[tag=et1,tag=zc4-s1-s] remove zc4-s1-s


#westen
#testen ob es geht
execute as @e[tag=et1] at @s if block ~-3 ~-1 ~ cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s1-w
execute as @e[tag=et1,tag=zc1-s1-w] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:flint_and_steel"}}] run tag @s add zc2-s1-w
execute as @e[tag=et1,tag=zc2-s1-w] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:magma_cream"}}] run tag @s add zc3-s1-w
execute as @e[tag=et1,tag=zc3-s1-w] at @s if block ~-3 ~-2 ~ fire run tag @s add zc4-s1-w

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s1-w] at @s run particle minecraft:flame ~-1.5 ~ ~ 0.8 0.5 0.8 0 2000
execute as @e[tag=et1,tag=zc4-s1-w] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s1-w] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s1-w] at @s run summon minecraft:item_frame ~-1 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-w] at @s run summon minecraft:item_frame ~-2 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-w] at @s run kill @e[type=item,distance=..4]
execute as @e[tag=et1,tag=zc4-s1-w] at @s run summon item ~-1.5 ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Feuer-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Feuer-Stab kannst du Feuer scheißen und Gegner in brand setzen"]},Unbreakable:1b,Damage:2}}}
execute as @e[tag=et1,tag=zc4-s1-w] at @s run tag @p add s1
execute as @e[tag=et1,tag=zc4-s1-w] at @s run setblock ~-3 ~-1 ~ cauldron
execute as @e[tag=et1,tag=zc4-s1-w] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Feuer-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s1-w] remove zc1-s1-w
tag @e[tag=et1,tag=zc2-s1-w] remove zc2-s1-w
tag @e[tag=et1,tag=zc3-s1-w] remove zc3-s1-w
tag @e[tag=et1,tag=zc4-s1-w] remove zc4-s1-w


#osten
#testen ob es geht
execute as @e[tag=et1] at @s if block ~3 ~-1 ~ cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:gold_nugget",Count:2b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @p[tag=z1] run tag @s add zc1-s1-e
execute as @e[tag=et1,tag=zc1-s1-e] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:flint_and_steel"}}] run tag @s add zc2-s1-e
execute as @e[tag=et1,tag=zc2-s1-e] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:magma_cream"}}] run tag @s add zc3-s1-e
execute as @e[tag=et1,tag=zc3-s1-e] at @s if block ~3 ~-2 ~ fire run tag @s add zc4-s1-e

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-s1-e] at @s run particle minecraft:flame ~1.5 ~ ~ 0.8 0.5 0.8 0 2000
execute as @e[tag=et1,tag=zc4-s1-e] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-s1-e] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-s1-e] at @s run summon minecraft:item_frame ~1 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-e] at @s run summon minecraft:item_frame ~2 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-s1-e] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-s1-e] at @s run summon item ~1.5 ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Feuer-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Feuer-Stab kannst du Feuer scheißen und Gegner in brand setzen"]},Unbreakable:1b,Damage:2}}}
execute as @e[tag=et1,tag=zc4-s1-e] at @s run tag @p add s1
execute as @e[tag=et1,tag=zc4-s1-e] at @s run setblock ~3 ~-1 ~ cauldron
execute as @e[tag=et1,tag=zc4-s1-e] at @s run tellraw @a ["",{"selector":"@p"},{"text":" hat den Feuer-Stab hergestellt!!!! ","color":"dark_purple"}]

#reset
tag @e[tag=et1,tag=zc1-s1-e] remove zc1-s1-e
tag @e[tag=et1,tag=zc2-s1-e] remove zc2-s1-e
tag @e[tag=et1,tag=zc3-s1-e] remove zc3-s1-e
tag @e[tag=et1,tag=zc4-s1-e] remove zc4-s1-e
