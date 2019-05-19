#DrBlackRat
#herstellung des ofen
#mplus/main

#norden
#testen ob es geht
execute as @e[tag=et1] at @s if block ~ ~-1 ~-3 cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:coal_block",Count:5b}}] if entity @p[tag=z1] run tag @s add zc1-o-n
execute as @e[tag=et1,tag=zc1-o-n] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:furnace"}}] run tag @s add zc2-o-n
execute as @e[tag=et1,tag=zc2-o-n] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:blaze_rod"}}] run tag @s add zc3-o-n
execute as @e[tag=et1,tag=zc3-o-n] at @s if block ~ ~-2 ~-3 fire run tag @s add zc4-o-n

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-o-n] at @s run particle minecraft:dust 0.5 0 1 1 ~ ~ ~-1.5 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-o-n] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-o-n] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-o-n] at @s run summon minecraft:item_frame ~ ~ ~-1 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-n] at @s run summon minecraft:item_frame ~ ~ ~-2 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-n] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-o-n] at @s run summon item ~ ~ ~-1.5 {Item:{id:"minecraft:written_book",Count:1b,tag:{Kapitel:1,display:{Name:"{\"text\":\"Kapitel I: Die Magie & Du\",\"color\":\"dark_purple\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"},title:"",author:"LittleRetard",pages:["{\"text\":\"Wenn du das lesen kannst ist irgend was schief gelaufen\",\"color\":\"black\"}"]}}}
execute as @e[tag=et1,tag=zc4-o-n] at @s run setblock ~ ~-1 ~-3 cauldron

#reset
tag @e[tag=et1,tag=zc1-o-n] remove zc1-o-n
tag @e[tag=et1,tag=zc2-o-n] remove zc2-o-n
tag @e[tag=et1,tag=zc3-o-n] remove zc3-o-n
tag @e[tag=et1,tag=zc4-o-n] remove zc4-o-n


#süden
#testen ob es geht
execute as @e[tag=et1] at @s if block ~ ~-1 ~3 cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:coal_block",Count:5b}}] if entity @p[tag=z1] run tag @s add zc1-o-s
execute as @e[tag=et1,tag=zc1-o-s] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:furnace"}}] run tag @s add zc2-o-s
execute as @e[tag=et1,tag=zc2-o-s] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:blaze_rod"}}] run tag @s add zc3-o-s
execute as @e[tag=et1,tag=zc3-o-s] at @s if block ~ ~-2 ~3 fire run tag @s add zc4-o-s

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-o-s] at @s run particle minecraft:dust 0.5 0 1 1 ~ ~ ~1.5 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-o-s] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-o-s] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-o-s] at @s run summon minecraft:item_frame ~ ~ ~1 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-s] at @s run summon minecraft:item_frame ~ ~ ~2 {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-s] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-o-s] at @s run summon item ~ ~ ~1.5 {Item:{id:"minecraft:written_book",Count:1b,tag:{Kapitel:1,display:{Name:"{\"text\":\"Kapitel I: Die Magie & Du\",\"color\":\"dark_purple\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"},title:"",author:"LittleRetard",pages:["{\"text\":\"Wenn du das lesen kannst ist irgend was schief gelaufen\",\"color\":\"black\"}"]}}}
execute as @e[tag=et1,tag=zc4-o-s] at @s run setblock ~ ~-1 ~3 cauldron

#reset
tag @e[tag=et1,tag=zc1-o-s] remove zc1-o-s
tag @e[tag=et1,tag=zc2-o-s] remove zc2-o-s
tag @e[tag=et1,tag=zc3-o-s] remove zc3-o-s
tag @e[tag=et1,tag=zc4-o-s] remove zc4-o-s


#westen
#testen ob es geht
execute as @e[tag=et1] at @s if block ~-3 ~-1 ~ cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:coal_block",Count:5b}}] if entity @p[tag=z1] run tag @s add zc1-o-w
execute as @e[tag=et1,tag=zc1-o-w] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:furnace"}}] run tag @s add zc2-o-w
execute as @e[tag=et1,tag=zc2-o-w] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:blaze_rod"}}] run tag @s add zc3-o-w
execute as @e[tag=et1,tag=zc3-o-w] at @s if block ~-3 ~-2 ~ fire run tag @s add zc4-o-w

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-o-w] at @s run particle minecraft:dust 0.5 0 1 1 ~-1.5 ~ ~ 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-o-w] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-o-w] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-o-w] at @s run summon minecraft:item_frame ~-1 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-w] at @s run summon minecraft:item_frame ~-2 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-w] at @s run kill @e[type=item,distance=..4]
execute as @e[tag=et1,tag=zc4-o-w] at @s run summon item ~-1.5 ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{Kapitel:1,display:{Name:"{\"text\":\"Kapitel I: Die Magie & Du\",\"color\":\"dark_purple\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"},title:"",author:"LittleRetard",pages:["{\"text\":\"Wenn du das lesen kannst ist irgend was schief gelaufen\",\"color\":\"black\"}"]}}}
execute as @e[tag=et1,tag=zc4-o-w] at @s run setblock ~-3 ~-1 ~ cauldron

#reset
tag @e[tag=et1,tag=zc1-o-w] remove zc1-o-w
tag @e[tag=et1,tag=zc2-o-w] remove zc2-o-w
tag @e[tag=et1,tag=zc3-o-w] remove zc3-o-w
tag @e[tag=et1,tag=zc4-o-w] remove zc4-o-w


#osten
#testen ob es geht
execute as @e[tag=et1] at @s if block ~3 ~-1 ~ cauldron[level=3] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] if entity @e[distance=2..4,nbt={Item:{id:"minecraft:coal_block",Count:5b}}] if entity @p[tag=z1] run tag @s add zc1-o-e
execute as @e[tag=et1,tag=zc1-o-e] at @s if entity @e[type=item_frame,limit=1,distance=..2,nbt={Item:{id:"minecraft:furnace"}}] run tag @s add zc2-o-e
execute as @e[tag=et1,tag=zc2-o-e] at @s if entity @e[type=item_frame,limit=1,distance=2..3,nbt={Item:{id:"minecraft:blaze_rod"}}] run tag @s add zc3-o-e
execute as @e[tag=et1,tag=zc3-o-e] at @s if block ~3 ~-2 ~ fire run tag @s add zc4-o-e

#wenn es geht etwas machen
execute as @e[tag=et1,tag=zc4-o-e] at @s run particle minecraft:dust 0.5 0 1 1 ~1.5 ~ ~ 0.8 0.5 0.8 1 2000
execute as @e[tag=et1,tag=zc4-o-e] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 10 0
execute as @e[tag=et1,tag=zc4-o-e] at @s run kill @e[type=item_frame,distance=..3]
execute as @e[tag=et1,tag=zc4-o-e] at @s run summon minecraft:item_frame ~1 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-e] at @s run summon minecraft:item_frame ~2 ~ ~ {Item:{},Facing:1b,}
execute as @e[tag=et1,tag=zc4-o-e] at @s run kill @e[type=item,distance=2..4]
execute as @e[tag=et1,tag=zc4-o-e] at @s run summon item ~1.5 ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{Kapitel:1,display:{Name:"{\"text\":\"Kapitel I: Die Magie & Du\",\"color\":\"dark_purple\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"},title:"",author:"LittleRetard",pages:["{\"text\":\"Wenn du das lesen kannst ist irgend was schief gelaufen\",\"color\":\"black\"}"]}}}
execute as @e[tag=et1,tag=zc4-o-e] at @s run setblock ~3 ~-1 ~ cauldron

#reset
tag @e[tag=et1,tag=zc1-o-e] remove zc1-o-e
tag @e[tag=et1,tag=zc2-o-e] remove zc2-o-e
tag @e[tag=et1,tag=zc3-o-e] remove zc3-o-e
tag @e[tag=et1,tag=zc4-o-e] remove zc4-o-e
