#DrBlackError
#deactivate debug infos wich /trigger debugoff

#DrBlackError
#execution and reset
execute as @a[scores={debug=1}] run scoreboard players enable @s debug
#execute as @s[tag=debug] run scoreboard players set @s debug 0
execute as @a[scores={debug=1}, tag=player] run tag @s remove player
execute as @a[scores={debug=1}, tag=!debug] run tag @s add debug
execute as @a[scores={debug=1}] run tellraw @s "Debug-Mode aktiviert!"
scoreboard players add @a[scores={debug=1}] debug 1

#DrBlackError
#activate debug infos wich /trigger debugon

#DrBlackError
#execution and reset
execute as @a[scores={debug=3}] run scoreboard players enable @s debug
execute as @a[scores={debug=3}, tag=!player] run tag @s add player
execute as @a[scores={debug=3}, tag=debug] run tag @s remove debug
execute as @a[scores={debug=3}] run tellraw @s "Debug-Mode deaktiviert!"
execute as @a[scores={debug=3}] run scoreboard players set @s debug 0
