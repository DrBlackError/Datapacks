#LittleRetard
#Gibt beim ausgühren von /trigger

#LittleRetard
#Ausführung & Reset
execute as @a[scores={help=1..}] run scoreboard players enable @s home
execute as @a[scores={help=1..}] run tellraw @s [{"text":"/trigger cmd - Gibt dir einen Commandblock"}]
execute as @a[scores={help=1..}] run tellraw @s [{"text":"/trigger heal - Heilt dich und füllt eine foodbar"}]
execute as @a[scores={help=1..}] run tellraw @s [{"text":"/trigger sethome - Setzt deinen Homepunkt"}]
execute as @a[scores={help=1..}] run tellraw @s [{"text":"/trigger home - [WIP] Teleportiert dich zu deinem Homepunkt"}]
#execute as @a[scores={help=1..}] at @s store result score @s xhome run data get entity @s Pos[0]
#execute as @a[scores={help=1..}] at @s store result score @s yhome run data get entity @s Pos[1]
#execute as @a[scores={help=1..}] at @s store result score @s zhome run data get entity @s Pos[2]
execute as @a[scores={help=1..}] run scoreboard players set @s help 0
