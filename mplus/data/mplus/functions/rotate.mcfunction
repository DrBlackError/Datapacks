#DrBlackError + DrBlackRat
#Zauberstäbe wechseln

#Stab 1 zu Stab 2
execute as @a[scores={sneaktime=0},tag=w1,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] at @s as @s run tag @s add Get2
execute as @a[tag=Get2,tag=!s1] at @s run tag @s add Get3
execute as @a[tag=Get2,tag=!s1] at @s run clear @s minecraft:carrot_on_a_stick{CustomModelData:1} 1
execute as @a[tag=Get2,tag=!s1] at @s run tag @s remove Get2
execute as @a[tag=s1,tag=Get2] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Feuer-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Feuer-Stab kannst du Feuer scheißen und Gegner in brand setzen"]},CustomModelData:2} 1
execute as @a[tag=s1,tag=Get2,tag=!Got2] run tag @s add Got2
execute as @a[tag=s1,tag=Get2] run clear @s minecraft:carrot_on_a_stick{CustomModelData:1} 1
execute as @a[tag=s1,tag=Get2] run tag @s remove Get2
execute as @a[tag=s1,tag=Got2] run tag @s remove Got2

#Stab 2 zu Stab 3
execute as @a[scores={sneaktime=0},tag=s1,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] at @s as @s run tag @s add Get3
execute as @a[tag=Get3,tag=!s2] at @s run tag @s add Get4
execute as @a[tag=Get3,tag=!s2] at @s run clear @s minecraft:carrot_on_a_stick{CustomModelData:2} 1
execute as @a[tag=Get3,tag=!s2] at @s run tag @s remove Get3
execute as @a[tag=s2,tag=Get3,tag=!Got3] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Blitz-Stab\",\"color\":\"dark_purple\"}",Lore:["Wenn die blaue Wolke ein Mob , Spieler oder Block trift wird ein Blitz gespawnt"]},CustomModelData:3} 1
execute as @a[tag=s2,tag=Get3] run tag @s add Got3
execute as @a[tag=s2,tag=Get3] run clear @s minecraft:carrot_on_a_stick{CustomModelData:2} 1
execute as @a[tag=s2,tag=Get3] run tag @s remove Get3
execute as @a[tag=s2,tag=Got3] run tag @s remove Got3

#Stab 3 zu Stab 4
execute as @a[scores={sneaktime=0},tag=s2,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}]}] at @s as @s run tag @s add Get4
execute as @a[tag=Get4,tag=!s3] at @s run tag @s add Get1
execute as @a[tag=Get4,tag=!s3] at @s run clear @s minecraft:carrot_on_a_stick{CustomModelData:3} 1
execute as @a[tag=Get4,tag=!s3] at @s run tag @s remove Get4
execute as @a[tag=s3,tag=Get4,tag=!Got4] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Freze-Stab\",\"color\":\"dark_purple\"}",Lore:["Mit dem Freze-Stab können sich die Leute die du triefst für 5 Sekunden nicht mehr Bewegen"]},CustomModelData:4} 1
execute as @a[tag=s3,tag=Get4] run tag @s add Got4
execute as @a[tag=s3,tag=Get4] run clear @s minecraft:carrot_on_a_stick{CustomModelData:3} 1
execute as @a[tag=s3,tag=Get4] run tag @s remove Get4
execute as @a[tag=s3,tag=Got4] run tag @s remove Got4

#Stab 4 zu Stab 5
execute as @a[scores={sneaktime=0},tag=s3,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}]}] at @s as @s run tag @s add Get5
execute as @a[tag=Get5,tag=!w9] at @s run tag @s add Get1
execute as @a[tag=Get5,tag=!w9] at @s run clear @s minecraft:carrot_on_a_stick{CustomModelData:4} 1
execute as @a[tag=Get5,tag=!w9] at @s run tag @s remove Get5
execute as @a[tag=w1,tag=Get5,tag=!Got5] run give @s minecraft:carrot_on_a_stick{CustomModelData:9} 1
execute as @a[tag=w1,tag=Get5] run tag @s add Got5
execute as @a[tag=w1,tag=Get5] run clear @s minecraft:carrot_on_a_stick{CustomModelData:4} 1
execute as @a[tag=w1,tag=Get5] run tag @s remove Get5
execute as @a[tag=w1,tag=Got5] run tag @s remove Got5

#Stab 5 zu Stab 1
execute as @a[scores={sneaktime=0},tag=s3,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}]}] at @s as @s run tag @s add Get1
execute as @a[tag=Get1,tag=!w1] at @s run tag @s add Get2
execute as @a[tag=Get1,tag=!w1] at @s run clear @s minecraft:carrot_on_a_stick{CustomModelData:9} 1
execute as @a[tag=Get1,tag=!w1] at @s run tag @s remove Get1
execute as @a[tag=w1,tag=Get1,tag=!Got1] run give @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Stab des sicheren Zuhauses\",\"color\":\"dark_purple\"}",Lore:["Dieser Stab bringt dich in jeder Situation nach Hause"]},HideFlags:63,CustomModelData:1} 1
execute as @a[tag=w1,tag=Get1] run tag @s add Got1
execute as @a[tag=w1,tag=Get1] run clear @s minecraft:carrot_on_a_stick{CustomModelData:9} 1
execute as @a[tag=w1,tag=Get1] run tag @s remove Get1
execute as @a[tag=w1,tag=Got1] run tag @s remove Got1



#Reset sneaktime
scoreboard players set @a[scores={sneaktime=1..}] sneaktime 0


#Vorlage
#execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}]}] run say hi
