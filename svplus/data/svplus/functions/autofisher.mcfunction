#DrBlackError
#Auto-fisher
execute as @e[type=armor_stand] at @s if entity @e[distance=..2,type=item,limit=1,nbt={Item:{tag:{display:{Name:'{"text":"Fischer"}'}}}}] run tag @s add frod
execute as @e[type=item,limit=1,nbt={Item:{tag:{display:{Name:'{"text":"Fischer"}'}}}}] if entity @e[tag=frod,limit=1,distance=..3] run tag @s add suicide
execute as @e[type=armor_stand] at @s if entity @e[distance=..2,type=item,limit=1,nbt={Item:{tag:{display:{Name:'{"text":"Fischer"}'}}}}] run replaceitem entity @s weapon.mainhand minecraft:fishing_rod 1
execute as @e[tag=suicide] run kill @s
execute as @e[tag=frod] run tag @s remove frod
