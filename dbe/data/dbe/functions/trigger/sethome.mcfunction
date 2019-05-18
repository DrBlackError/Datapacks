#DrBlackError
#Gibt beim ausgühren von /trigger

#DrBlackError
#Ausführung & Reset
execute as @a[scores={sethome=1..}] run scoreboard players enable @s sethome
execute as @a[scores={sethome=1..}] at @s store result score @s xhome run data get entity @s Pos[0]
execute as @a[scores={sethome=1..}] at @s store result score @s yhome run data get entity @s Pos[1]
execute as @a[scores={sethome=1..}] at @s store result score @s zhome run data get entity @s Pos[2]
execute as @a[scores={sethome=1..}] run scoreboard players set @s sethome 0
