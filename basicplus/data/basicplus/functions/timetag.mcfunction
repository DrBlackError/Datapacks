#Flololilan
#Gives Time Tags on Minecraft time
#//
#
execute as @a[tag=!night] at @s if score counter timescore matches 13000..24000 run tag @s add night
execute as @a[tag=night] at @s if score counter timescore matches ..12999 run tag @s remove night
execute as @a[tag=!day] at @s if score counter timescore matches ..12999 run tag @s add day
execute as @a[tag=day] at @s if score counter timescore matches 13000.. run tag @s remove day
