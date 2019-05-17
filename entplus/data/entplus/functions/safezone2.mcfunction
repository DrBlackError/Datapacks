#Made By Flo
#Work in Progress
#Wird von Safezone 1 benutzt
#

particle totem_of_undying ~ ~ ~10 4 0 0 0.01 5 force @a
particle totem_of_undying ~10 ~ ~ 0 0 4 0.01 5 force @a
particle totem_of_undying ~ ~ ~-10 4 0 0 0.01 5 force @a
particle totem_of_undying ~-10 ~ ~ 0 0 4 0.01 5 force @a
execute as @e[nbt={OnGround:1b,Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Safe_Zone\"}",Lore:["Dieses Schild erzeugt eine sichere Zone!"]}}}}] at @s positioned ~-10 ~ ~-10 run effect give @a[y=0,dx=20,dy=256,dz=20] minecraft:regeneration 3 2 true
execute as @e[nbt={OnGround:1b,Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Safe_Zone\"}",Lore:["Dieses Schild erzeugt eine sichere Zone!"]}}}}] at @s positioned ~-10 ~ ~-10 run effect give @a[y=0,dx=20,dy=256,dz=20] minecraft:glowing 1 1 true
execute as @e[nbt={OnGround:1b,Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Safe_Zone\"}",Lore:["Dieses Schild erzeugt eine sichere Zone!"]}}}}] at @s positioned ~-10 ~ ~-10 run kill @e[type=spider,y=0,dx=20,dy=256,dz=20]
execute as @e[nbt={OnGround:1b,Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Safe_Zone\"}",Lore:["Dieses Schild erzeugt eine sichere Zone!"]}}}}] at @s positioned ~-10 ~ ~-10 run kill @e[type=creeper,y=0,dx=20,dy=256,dz=20]
execute as @e[nbt={OnGround:1b,Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Safe_Zone\"}",Lore:["Dieses Schild erzeugt eine sichere Zone!"]}}}}] at @s positioned ~-10 ~ ~-10 run kill @e[type=zombie,y=0,dx=20,dy=256,dz=20]
execute as @e[nbt={OnGround:1b,Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Safe_Zone\"}",Lore:["Dieses Schild erzeugt eine sichere Zone!"]}}}}] at @s positioned ~-10 ~ ~-10 run kill @e[type=skeleton,y=0,dx=20,dy=256,dz=20]
