#DrBlackError
#gives the executing player a commandblock with /trigger cmd

#DrBlackError
#execution and reset
execute as @a[scores={cmd=1..}] run scoreboard players enable @s cmd
execute as @a[scores={cmd=1..}] run give @s command_block 1
execute as @a[scores={cmd=1..}] run scoreboard players set @s cmd 0
