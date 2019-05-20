#IFloooI
#Sets Gamemode to Creative
execute as @a[scores={1=1}] run gamemode creative @s
execute as @a[scores={1=1}] run tellraw @s "Gamemode wurde auf Kreativ geändert!"
execute as @a[scores={1=1..}] run scoreboard players set @s 1 0
