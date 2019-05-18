#DrBlackError
#Gibt beim ausgühren von /trigger cmd dem ausführenden Spieler einen Commandblock

#DrBlackError
#Ausführung & Reset
execute as @a[scores={cmd=1..}] run scoreboard players enable @s cmd
execute as @a[scores={cmd=1..}] run give @s command_block 1
execute as @a[scores={cmd=1..}] run scoreboard players set @s cmd 0
