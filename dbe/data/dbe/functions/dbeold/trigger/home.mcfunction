#DrBlackError
#plan was to teleport to the previous set homepoint but is no more follow up because auf the teleport-staff [entplus]

#DrBlackError
#execution and reset
#execute as @a[scores={home=1..}] run scoreboard players enable @s home
#execute as @a[scores={home=1..}] run title @s title " "
#execute as @a[scores={home=1..}] run title @s subtitle "Noch nicht verfügbar!"
#execute as @a[scores={home=1..}] at @s store result score @s xhome run data get entity @s Pos[0]
#execute as @a[scores={home=1..}] at @s store result score @s yhome run data get entity @s Pos[1]
#execute as @a[scores={home=1..}] at @s store result score @s zhome run data get entity @s Pos[2]
#execute as @a[scores={home=1..}] run scoreboard players set @s home 0
