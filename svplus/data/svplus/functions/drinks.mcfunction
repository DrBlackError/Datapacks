#DrBlackError
#adds custom drinks

#Wein (Süßbeere) (Barrel,versch. Stufen) -Betrunken /bei schlechten Hunger-
#Bier (Weizen) -Betrunken-
#Met (Blumen/Zucker) -Betrunken-
#Korn (Weizenkorn) -Betrunken-
#Wodka (Getreide/Kartoffel/Zucker) -Betrunken-

#RedBull (Phantom Membran) -Fliegen/Gleiten-
#Kakao (Milch/Kakaobohne) --
#Apfelsaft (Apfel) --
#Apfelwein (Apfel/Süsbeere) --
#Karottensaft (Karotte) --
#Chorussaft (Chorusfrucht) --
#Rote Beete Saft (Rote Beete) --
#Smootie (Karoote/Rote Beete/Apfel) --
#Waldbeerensaft (Süßbeere/Rote Beete) --

#execute as @e[nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}] at @s if block ~ ~ ~ minecraft:cauldron align xyz positioned ~0.5 ~ ~0.5 run summon item ~ ~1 ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Bier\"}"},HideFlags:33,CustomPotionEffects:[{Id:9b,Amplifier:1b,Duration:1200,ShowParticles:1b}],CustomPotionColor:15896092}}}

#DrBlackRat
#commands for custom dirnks

#Bier
execute as @e[nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] if entity @e[distance=..1,nbt={Item:{id:"minecraft:wheat",Count:1b}}] run tag @s add crafted_bier

execute as @e[tag=crafted_bier] at @s run fill ~ ~ ~ ~ ~ ~ cauldron replace cauldron[level=3]
execute as @e[tag=crafted_bier] at @s run particle minecraft:dust 0.5 1 1 1 ~ ~ ~ 0.1 0.8 0.1 0 100
execute as @e[tag=crafted_bier] at @s run playsound minecraft:block.brewing_stand.brew ambient @a[distance=..10]
execute as @e[tag=crafted_bier] at @s run kill @e[type=item,distance=..1,tag=!crafted_bier]
execute as @e[tag=crafted_bier] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b}}
execute as @e[tag=crafted_bier] at @s run kill @s
