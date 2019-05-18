#DrBlackError
#Droppt Köpfe beim Tod von DrblackError
execute as @a[name=DrBlackError,scores={Leben=0},tag=!bek] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"DrBlackError"}}}}
execute as @a[name=DrBlackError,scores={Leben=0},tag=!bek] run tag DrBlackError add bek
execute as @a[name=DrBlackError,scores={Leben=1..,},tag=bek] run tag DrBlackError remove bek

#IFloooI
#Droppt Köpfe beim Tod von IFloooI
execute as @a[name=IFloooI,scores={Leben=0},tag=!bek] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"IFloooI"}}}}
execute as @a[name=IFloooI,scores={Leben=0},tag=!bek] run tag IFloooI add bek
execute as @a[name=IFloooI,scores={Leben=1..,},tag=bek] run tag IFloooI remove bek
