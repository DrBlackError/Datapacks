#LittleRetard
#Testfunktion zum ausführen beliebiger Sachen

#execute as @e[nbt={Item:{id:"minecraft:dirt"}}] at @s if entity @e[distance=..2,nbt={Item:{id:"minecraft:feather"}}] if entity @e[distance=..2,nbt={Item:{id:"minecraft:flint_and_steel"}}] if entity @e[distance=..2,nbt={Item:{id:"minecraft:water_bucket"}}] if block ~ ~-1 ~ enchanting_table run tag @s add zt
#execute as @e[tag=zt] at @s run summon lightning_bolt ~4 ~ ~4
#execute as @e[tag=zt] at @s run summon lightning_bolt ~-4 ~ ~4
#execute as @e[tag=zt] at @s run summon lightning_bolt ~4 ~ ~-4
#execute as @e[tag=zt] at @s run summon lightning_bolt ~-4 ~ ~-4
#execute as @e[tag=zt] at @s run weather thunder
#execute as @a[tag=zt] run kill @s

#LittleRetard
#give custom Items
give @p minecraft:carrot_on_a_stick{CustomModelData:1} 1
give @p minecraft:carrot_on_a_stick{CustomModelData:2} 1
give @p minecraft:carrot_on_a_stick{CustomModelData:3} 1
give @p minecraft:carrot_on_a_stick{CustomModelData:4} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:5} 1  Skyblockplus
#give @p minecraft:carrot_on_a_stick{CustomModelData:6} 1  Skyblockplus
#give @p minecraft:carrot_on_a_stick{CustomModelData:7} 1  Skyblockplus
#give @p minecraft:carrot_on_a_stick{CustomModelData:8} 1  Skyblockplus
#give @p minecraft:carrot_on_a_stick{CustomModelData:9} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:10} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:11} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:12} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:13} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:14} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:15} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:16} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:17} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:18} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:19} 1
#give @p minecraft:carrot_on_a_stick{CustomModelData:20} 1

#LittleRetard
#gives player Potion of Mana
give @p minecraft:potion{HideFlags:33,CustomPotionEffects:[{Id:27b,Amplifier:1b,Duration:1,ShowParticles:0b}],CustomPotionColor:4707583} 1
give @p minecraft:potion{HideFlags:33,CustomPotionEffects:[{Id:27b,Amplifier:2b,Duration:1,ShowParticles:0b}],CustomPotionColor:4707583} 1
give @p minecraft:potion{HideFlags:33,CustomPotionEffects:[{Id:27b,Amplifier:3b,Duration:1,ShowParticles:0b}],CustomPotionColor:4707583} 1
give @p minecraft:potion{HideFlags:33,CustomPotionEffects:[{Id:27b,Amplifier:4b,Duration:1,ShowParticles:0b}],CustomPotionColor:4707583} 1

#?
#?
#execute as LittleRetard at @s align xyz positioned ~0.5 ~1 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["et1"],CustomName:"{\"text\":\"+\",\"color\":\"dark_blue\"}"}
#give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Feuer-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Feuer-Stab kannst du Feuer scheißen und Gegner in brand setzen"]},CustomModelData:2} 1
#give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Blitz-Stab\",\"color\":\"dark_purple\"}",Lore:["Wenn die blaue Wolke ein Mob , Spieler oder Block trift wird ein Blitz gespawnt"]},CustomModelData:3} 1
#give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Freze-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Freze-Stab können sich die Leute die du triefst für 5 Sekunden nicht mehr Bewegen"]},CustomModelData:4} 1

#LittleRetard
#Text to tp to Team-Spawns [deprecated]
tellraw @s "----------"
tellraw @s ""
tellraw @s {"text":"Team Rot","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s in overworld run tp @s -389 64 -380"}}
tellraw @s {"text":"Team Gelb","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s in overworld run tp @s -756 82 1027"}}
tellraw @s {"text":"Team Grün","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s in overworld run tp @s -60 73 84"}}
tellraw @s {"text":"Team Blau","color":"blue","clickEvent":{"action":"run_command","value":"/execute as @s in overworld run tp @s 61 65 536"}}
tellraw @s {"text":"Team Admin","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s in the_nether run tp @s -73 134 -44"}}
tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
#tellraw @s ""
tellraw @s "----------"
