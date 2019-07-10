#DrBlackRat
#feuer stab

#testen ob mann es machen kann und mana entfernen
execute as @a[tag=!z1,scores={shootclick1=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] at @s run tellraw @p ["",{"selector":"@s"},{"text":": Error: Tag 'z1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add z1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add z1 [klicke um auszuführen]"}]}},"bold":false}]
execute as @a[tag=!s1,scores={shootclick1=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] at @s run tellraw @p ["",{"selector":"@s"},{"text":": Error: Tag 's1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add s1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add s1 [klicke um auszuführen]"}]}},"bold":false}]

execute as @a[tag=z1,tag=s1,scores={shootclick1=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run tag @s add shoot1-1
execute as @a[tag=shoot1-1,scores={mana=5..}] at @s run tag @s add shoot1shoot
execute as @a[tag=shoot1shoot] at @s run scoreboard players remove @s mana 5

#spawnen und scheißen
execute as @a[tag=shoot1shoot] at @s run playsound minecraft:entity.illusioner.prepare_mirror ambient @a[distance=..20]
execute as @a[tag=shoot1shoot] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Duration:40,Tags:["shoot1objekt"]}
execute as @a[tag=shoot1shoot] at @s run tp @e[tag=shoot1objekt,limit=1,sort=nearest] @s
execute if entity @a[tag=shoot1shoot] as @e[tag=shoot1objekt,tag=!shoot1up] at @s run tp @s ~ ~1.5 ~
execute if entity @a[tag=shoot1shoot] as @e[tag=shoot1objekt,tag=!shoot1up] at @s run tag @s add shoot1up
execute as @e[tag=shoot1objekt] at @s run tp @s ^ ^ ^1
execute if entity @a[tag=shoot1shoot] as @e[tag=shoot1objekt] at @s run tp @s ^ ^ ^2
execute as @e[tag=shoot1objekt] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.05 20 force

#schaden machen
execute as @e[tag=shoot1objekt] at @s run effect give @e[distance=..2,tag=!shoot1objekt,type=!item,type=!armor_stand,type=!area_effect_cloud] instant_damage 1 1
execute as @e[tag=shoot1objekt] at @s as @e[distance=..2,tag=!shoot1objekt,type=!item,type=!armor_stand,type=!area_effect_cloud] at @s run summon arrow ~ ~2.2 ~ {damage:0.0d,Fire:400s,Tags:[fire_arrow]}

#reset
scoreboard players reset @a[scores={shootclick1=1..}] shootclick1
tag @a[tag=shoot1-1] remove shoot1-1
tag @a[tag=shoot1shoot] remove shoot1shoot
execute as @e[tag=shoot1objekt] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=shoot1objekt] at @s if entity @e[distance=..2,tag=!shoot1objekt,type=!item,type=!armor_stand,type=!area_effect_cloud] run kill @s

#kill arrow
scoreboard players add @e[nbt={Tags:[fire_arrow]}] fire_arrow_timer 1
execute as @e[nbt={Tags:[fire_arrow]}] if score @s fire_arrow_timer matches 10 run kill @s
