#DrBlackRat
#feuer stab

#testen ob mann es machen kann und mana entfernen
execute as @a[tag=!z1,scores={shootclick3=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] at @s run tellraw @p ["",{"text":"Error: Tag 'z1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add z1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add z1 [klicke um auszuführen]"}]}},"bold":false}]
execute as @a[tag=!s3,scores={shootclick3=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] at @s run tellraw @p ["",{"text":"Error: Tag 's3' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add s3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add s3 [klicke um auszuführen]"}]}},"bold":false}]

execute as @a[tag=z1,tag=s3,scores={shootclick3=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] run tag @s add shoot3-1
execute as @a[tag=shoot3-1,scores={mana=3..}] at @s run tag @s add shoot3shoot
execute as @a[tag=shoot3-1,scores={mana=..2}] at @s run tellraw @s ["",{"text":"Du hast nicht genug Mana! ","color":"aqua"},{"text":"Benötigt: ","color":"blue"},{"text":"3","color":"green","bold":true}]
execute as @a[tag=shoot3shoot] at @s run scoreboard players remove @s mana 3

#spawnen und scheißen
execute as @a[tag=shoot3shoot] at @s run playsound minecraft:block.snow.place ambient @a[distance=..20] ~ ~ ~ 100
execute as @a[tag=shoot3shoot] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Duration:40,Tags:["shoot3objekt"]}
execute as @a[tag=shoot3shoot] at @s run tp @e[tag=shoot3objekt,limit=1,sort=nearest] @s
execute if entity @a[tag=shoot3shoot] as @e[tag=shoot3objekt,tag=!shoot3up] at @s run tp @s ~ ~1.5 ~
execute if entity @a[tag=shoot3shoot] as @e[tag=shoot3objekt,tag=!shoot3up] at @s run tag @s add shoot3up
execute as @e[tag=shoot3objekt] at @s run tp @s ^ ^ ^1
execute if entity @a[tag=shoot3shoot] as @e[tag=shoot3objekt] at @s run tp @s ^ ^ ^2
execute as @e[tag=shoot3objekt] at @s run particle minecraft:dust 0 1 1 2 ~ ~ ~ 0 0 0 1 10 force

#schaden machen
execute as @e[tag=shoot3objekt] at @s run tag @e[distance=..2,tag=!shoot3objekt,type=!item,type=!armor_stand,type=!area_effect_cloud] add ice
execute as @e[tag=ice] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:100,Tags:["shoot3tp"]}
execute as @e[tag=ice] at @s run tp @e[tag=shoot3tp,limit=1,sort=nearest,distance=..1] @s
execute as @e[tag=shoot3tp] at @s run tp @e[tag=!shoot3objekt,type=!item,type=!armor_stand,type=!area_effect_cloud,distance=..1,limit=1,sort=nearest] @s
execute as @e[tag=ice] at @s run playsound minecraft:block.glass.break ambient @a[distance=..20]
execute as @e[tag=ice] at @s run particle minecraft:dust 0 1 1 10 ~ ~ ~ 0 0 0 1 20 force
execute as @e[tag=ice] at @s run kill @e[tag=shoot3objekt,limit=1,sort=nearest]

#reset
scoreboard players reset @a[scores={shootclick3=1..}] shootclick3
tag @e[tag=ice] remove ice
tag @a[tag=shoot3-1] remove shoot3-1
tag @a[tag=shoot3shoot] remove shoot3shoot
execute as @e[tag=shoot3objekt] at @s unless block ~ ~ ~ air run kill @s
