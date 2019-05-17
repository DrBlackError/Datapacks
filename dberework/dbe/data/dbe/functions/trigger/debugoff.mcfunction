#DrBlackError
#Gibt beim ausgühren von /trigger
#
#

#Ausführung & Reset
execute as @a[scores={debugoff=1..}] run scoreboard players enable @s debugoff
execute as @a[scores={debugoff=1..}] run scoreboard players set @a debug 0
execute as @a[scores={debugoff=1..}] run scoreboard players set @s debugoff 0
