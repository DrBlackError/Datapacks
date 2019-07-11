#Florian
#9.7.2019

#Looking for the 4 Recipe Items for the "Summoning"
execute as @r at @s as @e[limit=1,type=item,nbt={OnGround:1b,Item:{id:"minecraft:nether_star",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add chunkloader1
execute as @r at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:ender_pearl",Count:16b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add chunkloader2
execute as @r at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:diamond_block",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add chunkloader3
execute as @r at @s as @e[type=item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:chorus_flower",Count:1b}}] at @s if block ~ ~ ~ enchanting_table run tag @s add chunkloader4
#If All Items are on Place The Main Items get Tagged
execute as @e[tag=chunkloader1] at @s if entity @e[tag=chunkloader2,distance=..1] if entity @e[tag=chunkloader3,distance=..1] if entity @e[tag=chunkloader4,distance=..1] run tag @s add summon_chunkloader1
#Some effects Sounds and Begin of the "Summoning"
execute as @e[type=item,tag=summon_chunkloader1,tag=!chunkloadcount] at @s run playsound minecraft:entity.generic.explode master @a[distance=..10]
execute as @e[type=item,tag=summon_chunkloader1,tag=!chunkloadcount] at @s run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,tag=summon_chunkloader1,tag=!chunkloadcount] at @s run summon lightning_bolt ~ ~ ~
#Just for Security if lightning_bolt gets lazy and doesn't want to kill all items
execute as @e[type=item,tag=summon_chunkloader1,tag=!chunkloadcount] at @s run kill @e[tag=chunkloader2,distance=..1,limit=16]
execute as @e[type=item,tag=summon_chunkloader1,tag=!chunkloadcount] at @s run kill @e[tag=chunkloader3,distance=..1,limit=1]
execute as @e[type=item,tag=summon_chunkloader1,tag=!chunkloadcount] at @s run kill @e[tag=chunkloader4,distance=..1,limit=1]
execute as @e[type=item,tag=summon_chunkloader1,tag=!chunkloadcount] at @s run tag @s add chunkloadcount

#Effect to Hide The enchanting_table
execute as @e[type=item,tag=summon_chunkloader1] at @s run particle minecraft:smoke ~ ~ ~ 0.6 0.6 0.6 0.0000001 300 force @a
execute as @e[type=item,tag=summon_chunkloader1,tag=!centered] at @s align xz run tp @s ~0.5 ~ ~0.5
execute as @e[type=item,tag=summon_chunkloader1,tag=!centered] run tag @s add centered
execute as @e[type=item,tag=summon_chunkloader1,tag=!setup] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Small:1b,CustomName:"{\"text\":\"chunkloader\",\"color\":\"dark_purple\"}",CustomNameVisible:1b}
execute as @e[type=item,tag=summon_chunkloader1,tag=!setup] at @s run tag @s add setup
execute as @e[type=armor_stand,name=chunkloader,tag=!head] run replaceitem entity @s armor.head minecraft:purpur_block 1
execute as @e[type=armor_stand,name=chunkloader,tag=!head] run tag @s add head
execute as @e[type=armor_stand,name=chunkloader,tag=!loaded] at @s run forceload add ~ ~ ~ ~
execute as @e[type=armor_stand,name=chunkloader,tag=!loaded] at @s run tag @s add loaded
execute as @e[type=armor_stand,name=chunkloader] at @s run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.0000000001 1 force @a
execute as @e[type=armor_stand,name=chunkloader] at @s run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0.0000000001 1 force @a
execute as @e[type=armor_stand,name=chunkloader] at @s unless block ~ ~ ~ minecraft:enchanting_table run forceload remove ~ ~ ~ ~
execute as @e[type=armor_stand,name=chunkloader] at @s unless block ~ ~ ~ minecraft:enchanting_table run kill @s
execute as @e[type=armor_stand,name=chunkloader] at @s unless entity @e[type=slime,distance=..2] run summon minecraft:slime ~ ~-0.75 ~ {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Size:1,Tags:["chunkloadslime"]}
execute as @e[tag=chunkloadslime,tag=!invis] run effect give @s minecraft:invisibility 1000000 1 true
execute as @e[type=minecraft:slime,tag=chunkloadslime,tag=!invis] run tag @s add invis
