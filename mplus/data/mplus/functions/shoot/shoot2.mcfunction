#DrBlackRat
#blitz stab

#testen ob mann es machen kann und mana entfernen
execute as @a[tag=!z1,scores={shootclick2=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] at @s run tellraw @p ["",{"text":"Error: Tag 'z1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add z1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add z1 [klicke um auszuführen]"}]}},"bold":false}]
execute as @a[tag=!s2,scores={shootclick2=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] at @s run tellraw @p ["",{"text":"Error: Tag 's2' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add s2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add s2 [klicke um auszuführen]"}]}},"bold":false}]

execute as @a[tag=z1,tag=s2,scores={shootclick2=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run tag @s add shoot2-1
execute as @a[tag=shoot2-1,scores={mana=6..}] at @s run tag @s add shoot2shoot
execute as @a[tag=shoot2-1,scores={mana=..5}] at @s run tellraw @s ["",{"text":"Du hast nicht genug Mana! ","color":"aqua"},{"text":"Benötigt: ","color":"blue"},{"text":"6","color":"green","bold":true}]
execute as @a[tag=shoot2shoot] at @s run scoreboard players remove @s mana 6

#spawnen und scheißen
execute as @a[tag=shoot2shoot] at @s run playsound minecraft:entity.illusioner.prepare_blindness ambient @a[distance=..20]
execute as @a[tag=shoot2shoot] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Duration:40,Tags:["shoot2objekt"]}
execute as @a[tag=shoot2shoot] at @s run tp @e[tag=shoot2objekt,limit=1,sort=nearest] @s
execute if entity @a[tag=shoot2shoot] as @e[tag=shoot2objekt,tag=!shoot2up] at @s run tp @s ~ ~1.5 ~
execute if entity @a[tag=shoot2shoot] as @e[tag=shoot2objekt,tag=!shoot2up] at @s run tag @s add shoot2up
execute as @e[tag=shoot2objekt] at @s run tp @s ^ ^ ^1
execute if entity @a[tag=shoot2shoot] as @e[tag=shoot2objekt] at @s run tp @s ^ ^ ^2
execute as @e[tag=shoot2objekt] at @s run particle minecraft:dust 0 0 1 2 ~ ~ ~ 0 0 0 1 10 force

#schaden machen
execute as @e[tag=shoot2objekt] at @s as @e[distance=..2,tag=!shoot2objekt,limit=1] at @e[distance=..2,tag=!shoot2objekt,limit=1,type=!item,type=!armor_stand,type=!area_effect_cloud] run summon lightning_bolt ~ ~ ~
execute as @e[tag=shoot2objekt] at @s unless block ~ ~ ~ air run summon lightning_bolt ~ ~ ~

#reset
scoreboard players reset @a[scores={shootclick2=1..}] shootclick2
tag @a[tag=shoot2-1] remove shoot2-1
tag @a[tag=shoot2shoot] remove shoot2shoot
execute as @e[tag=shoot2objekt] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=shoot2objekt] at @s if entity @e[distance=..2,tag=!shoot2objekt,type=!item,type=!armor_stand,type=!area_effect_cloud] run kill @s
