#
#
#
#

#
execute as @a[gamemode=!creative,scores={sneaktel=1..}] run tp @e[tag=1,limit=1]
execute as @a[scores={sneaktel=1..}] run scoreboard players set @s sneaktel 0
