#DrBlackRat modified by DrBlackError
#Gibt alle 50 Ticks 1 Mana hinzu
scoreboard players add @a[scores={mana=..9},tag=z1] manatime 1
scoreboard players add @a[scores={mana=10..50},tag=z1,tag=manaplus] manatime 1
execute as @a[scores={manatime=50},tag=z1] at @s run scoreboard players add @s[scores={mana=..9},tag=z1] mana 1
execute as @a[scores={manatime=50},tag=z1,tag=manaplus] at @s run scoreboard players add @s[scores={mana=10..50},tag=z1,tag=manaplus] mana 1


scoreboard players set @a[scores={manatime=50},tag=z1] manatime 0

execute as @a[tag=!z1] at @s run scoreboard players set @s mana 0
execute as @a[tag=!z1] at @s run scoreboard players set @s manatime 0
