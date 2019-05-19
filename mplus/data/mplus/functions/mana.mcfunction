#DrBlackRat modified by LittleRetard
#Gibt alle 50 Ticks 1 Mana hinzu
scoreboard players add @a[scores={mana=..9}] manatime 1
execute as @a[scores={manatime=50}] at @s run scoreboard players add @s[scores={mana=..9}] mana 1
scoreboard players set @a[scores={manatime=50}] manatime 0
