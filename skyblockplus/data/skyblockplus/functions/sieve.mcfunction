#IFloooI
#?
execute as @e[type=armor_stand,name=sieve_main] at @s if block ~ ~ ~ dirt run summon armor_stand ~ ~ ~ {Tags:["start"],NoGravity:1b,Small:1b,Marker:1b,DisabledSlots:4144959,CustomName:"{\"text\":\"sieve\"}"}
execute as @e[type=armor_stand,name=sieve_main] at @s if block ~ ~ ~ dirt unless entity @e[type=armor_stand,name=sieve,tag=started,tag=!start] as @e[type=armor_stand,name=sieve,tag=!started,tag=start,limit=1] run scoreboard players add @s sieve 26
execute as @e[type=armor_stand,name=sieve,tag=started] at @s run tag @s remove start
execute as @e[type=armor_stand,name=sieve,tag=!started,scores={sieve=26}] at @s run tag @s add started
execute as @e[type=armor_stand,name=sieve,scores={sieve=26}] at @s run replaceitem entity @e[type=armor_stand,name=sieve,sort=nearest,limit=1] armor.head dirt
execute as @e[type=armor_stand,name=sieve_main] at @s if block ~ ~ ~ dirt run setblock ~ ~ ~ air
execute as @e[name=sieve,scores={sieve=..26}] at @s run particle minecraft:block minecraft:dirt ~ ~0.5 ~ 0 0.1 0 0.01 1 force
execute as @e[name=sieve,scores={sieve=1..26}] at @s run tp @s ~ ~-0.04 ~
execute as @e[name=sieve,scores={sieve=1..26}] at @s run scoreboard players remove @s sieve 1
execute as @e[type=armor_stand,name=sieve,scores={sieve=1},tag=!start,tag=started] at @s run scoreboard players set @e[type=armor_stand,name=sieve,tag=start,tag=!started,limit=1,sort=furthest,distance=..2] sieve 26
execute as @e[type=armor_stand,name=sieve_main] at @s if entity @e[type=armor_stand,name=sieve,scores={sieve=1},distance=..2] run loot spawn ~ ~ ~ loot mplus:test2
execute as @e[type=armor_stand,name=sieve,scores={sieve=1}] at @s run kill @s
execute as @e[type=armor_stand,name=sieve,scores={sieve=27..}] at @s run kill @s
