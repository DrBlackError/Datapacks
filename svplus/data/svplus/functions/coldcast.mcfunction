#?
#?
execute positioned ~ ~1.8 ~ if block ~ ~ ~ #minecraft:warm unless entity @e[type=minecraft:armor_stand,name=warm,distance=..5] run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:999999999,Tags:["cold_warm"]}
scoreboard players add @s coldcast 1
execute unless block ~ ~ ~ minecraft:smoker positioned ^ ^ ^1 if score @s coldcast matches ..100 run function svplus:coldcast
