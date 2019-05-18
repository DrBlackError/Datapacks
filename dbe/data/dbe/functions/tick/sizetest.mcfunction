#DrBlackError
#Jeder Befehl, der hier eingetragen wird, wird in jedem (Game-)tick wiederholt ausgeführt
#Letzte Änderung:
#

#
execute as @a at @s if block ~ ~1 ~ #minecraft:slabs if entity @s[nbt={OnGround:1b}] run say hi
execute as @a at @s unless block ~ ~-1 ~ air unless block ~ ~1 ~ air run say hi
