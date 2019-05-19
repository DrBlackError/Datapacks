#LittleRetard
#Gibt beim ausgühren von /trigger

#LittleRetard
#Ausführung & Reset
execute as @a[scores={home=1..}] run scoreboard players enable @s home
execute as @a[scores={home=1..}] run title @s title " "
execute as @a[scores={home=1..}] run title @s subtitle "Noch nicht verfügbar!"
#execute as @a[scores={home=1..}] at @s store result score @s xhome run data get entity @s Pos[0]
#execute as @a[scores={home=1..}] at @s store result score @s yhome run data get entity @s Pos[1]
#execute as @a[scores={home=1..}] at @s store result score @s zhome run data get entity @s Pos[2]
execute as @a[scores={home=1..}] run scoreboard players set @s home 0
