#DrBlackRat
#Teleport stab
#mplus/wand1 mplus/wand1c  mplus/setup mplus/main

scoreboard players remove @a[scores={tptime=1..}] tptime 1

execute as @a[scores={tptime=10..30,sprinttime=1..}] at @s run tag @s add tp_stop
execute as @a[scores={tptime=10..30,walktime=1..}] at @s run tag @s add tp_stop

scoreboard players set @a[scores={sprinttime=1..}] sprinttime 0
scoreboard players set @a[scores={walktime=1..}] walktime 0

execute as @a[scores={tptime=49}] at @s run tellraw @s ["",{"text":"Der Teleport wird abgebrochen wenn du dich bewegst!","color":"gold"}]
execute as @a[scores={tptime=10..50}] at @s run particle minecraft:dust 0.5 0 1 3 ~ ~ ~ 0.2 0.6 0.2 5 10
execute as @a[scores={tptime=49}] at @s run playsound minecraft:block.portal.travel ambient @a[distance=..20] ~ ~ ~ 0.4
execute as @a[scores={tptime=10}] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..20]
execute as @e[tag=home_spawnpoint] at @s if score @s uuid = @a[limit=1,scores={tptime=10}] uuid in minecraft:overworld run tp @a[limit=1,scores={tptime=10}] @s
execute as @a[scores={tptime=10},tag=!home_set] at @s run tellraw @a[limit=1,scores={tptime=10}] ["",{"text":"Du hast noch kein Home gesetzt!","color":"red"}]
execute as @a[scores={tptime=9}] at @s run particle minecraft:dust 0.5 0 1 3 ~ ~ ~ 0.2 0.6 0.2 5 100
execute as @a[scores={tptime=9}] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..20]

execute as @a[tag=tp_stop] at @s run tellraw @s ["",{"text":"Teleport abgebrochen!","color":"dark_red"}]
execute as @a[tag=tp_stop] at @s run scoreboard players set @s tptime 0

tag @a[tag=tp_stop] remove tp_stop
