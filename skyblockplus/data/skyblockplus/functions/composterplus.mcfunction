#DrBlackRat
#sorgt dafür das aus dem composter erde kommt
#skyblockplus:main, skyblockplus:setup
#Letzte änderung: DrBlackRat 20.01.2019 (Fertigstellung)

#DrBlackRat
#spawn der com_block
execute as @a[scores={composter_placed=1..}] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:50,Tags:["com_projektil"]}
execute as @a[scores={composter_placed=1..}] at @s run tp @e[tag=com_projektil] @s
execute if entity @a[scores={composter_placed=1..}] as @e[tag=com_projektil] at @s run tp @s ~ ~1.8 ~
execute as @e[tag=com_projektil] at @s run tp @s ^ ^ ^1
execute as @e[tag=com_projektil] at @s if block ~ ~ ~ composter unless entity @e[tag=com_block,distance=..0.8] run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:999999999,Tags:["com_block"]}

#DrBlackRat
#block modify / item spawn bei handnutzung
execute as @e[tag=com_block] at @s if block ~ ~ ~ composter[level=7] unless block ~ ~-1 ~ hopper run summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b}}
execute as @e[tag=com_block] at @s if block ~ ~ ~ composter[level=7] unless block ~ ~-1 ~ hopper run summon item ~ ~ ~ {Item:{id:"minecraft:bone_meal",Count:2b}}
execute as @e[tag=com_block] at @s if block ~ ~ ~ composter[level=7] unless block ~ ~-1 ~ hopper run playsound minecraft:block.composter.empty ambient @a[distance=..10] ~ ~ ~ 0.5
execute as @e[tag=com_block] at @s if block ~ ~ ~ composter[level=7] if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {Items:[{Slot:0b,id:"minecraft:dirt",Count:1b},{Slot:1b,id:"minecraft:bone_meal",Count:2b}]}

#DrBlackRat
#reset
execute as @e[tag=com_block] at @s if block ~ ~ ~ composter[level=7] run setblock ~ ~ ~ composter[level=0]
execute as @e[tag=com_projektil] at @s if block ~ ~ ~ composter run kill @s
scoreboard players set @a[scores={composter_placed=1..}] composter_placed 0
execute as @e[tag=com_block] at @s unless block ~ ~ ~ composter run kill @s

#DrBlackRat
#com_block leben reset
execute as @e[nbt={Age:999999800},tag=com_block] run data merge entity @s {Age:0}

#DrBlackRat
#composter schneller machen
execute as @e[tag=com_block] at @s if block ~ ~ ~ composter[level=1] run setblock ~ ~ ~ composter[level=2]
