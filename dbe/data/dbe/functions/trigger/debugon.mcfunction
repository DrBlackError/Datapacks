#DrBlackError
#activate debug infos wich /trigger debugon

#DrBlackError
#execution and reset
execute as @a[scores={debugon=1..}] run scoreboard players enable @s debugon
execute as @a[scores={debugon=1..}] run scoreboard players set @a debug 1
execute as @a[scores={debugon=1..}] run scoreboard players set @s debugon 0
