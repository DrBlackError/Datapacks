#IFlooooI
execute as @a[scores={islandport=0}] at @s if entity @e[type=armor_stand,name=islandport,distance=..2] run scoreboard players add @s islandport 1
execute as @a[scores={islandport=1..}] run scoreboard players add @s islandport 1
execute as @a[scores={islandport=1..90}] run effect give @s minecraft:blindness 2 255 true
execute as @a[scores={islandport=1..90}] run effect give @s minecraft:night_vision 2 255 true
execute as @a[scores={islandport=20}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1
execute as @a[scores={islandport=40}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1
execute as @a[scores={islandport=60}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1
execute as @a[scores={islandport=80}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute as @a[scores={islandport=95}] run tp @s -121 50 -1
execute as @a[scores={islandport=101..}] run scoreboard players set @s islandport 0
