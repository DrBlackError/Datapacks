#LittleRetard
#"Frieren"-System
execute as @a[tag=night,tag=!warm,tag=!cold_protection] run scoreboard players add @s temp_counter 1
execute as @a[tag=night,tag=warm,tag=!cold_protection] run scoreboard players add @s temp_counter 4
execute as @a[tag=!perm_prot,tag=night,tag=!warm,tag=!cold_protection,scores={temp_counter=20,temperatur=-39..}] run scoreboard players remove @s temperatur 1
execute as @a[tag=night,tag=warm,scores={temp_counter=20}] if score @s temperatur matches ..40 run scoreboard players add @s temperatur 1
execute as @a[scores={temp_counter=20..}] run scoreboard players set @s temp_counter 0
execute as @a[scores={temperatur=-39}] run tag @s add cold_prep
execute as @a[scores={temperatur=-40}] run tag @s add cold_protection
execute as @a[tag=!cold_protection] run scoreboard players set @s moved 0
execute as @a[tag=cold_protection,scores={moved=300..}] run tellraw @s ["",{"text":"[Achtung]","color":"dark_red"},{"text":" Durch deine Bewegung wurde dein durch den Tod erhaltener Kälteschutz zerstört","color":"dark_green"}]
execute as @a[tag=cold_protection,scores={moved=300..}] run tag @s remove cold_protection
execute as @a[scores={moved=300..}] run scoreboard players set @s temperatur 40
execute as @a[tag=cold_prep,scores={temperatur=-40}] run kill @s
execute as @a[tag=cold_prep,scores={temperatur=-40}] run tag @s remove cold_prep

#?
#?
#execute as @e[type=minecraft:armor_stand,name=warm] unless entity @e[type=armor_stand,name=whooosh,distance=..30] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"whooosh\",\"color\":\"aqua\"}",CustomNameVisible:1b,DisabledSlots:0}
#execute as @e[type=minecraft:armor_stand,name=whooosh] run scoreboard players add @s as_age 1
#execute as @e[type=minecraft:armor_stand,name=whooosh] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.075 10 force
#execute as @e[type=minecraft:armor_stand,name=whooosh] at @s run tp @s ~ ~0.2 ~
#execute as @e[type=minecraft:armor_stand,name=whooosh] if score @s as_age matches 100.. run kill @s

#IFloooI
#?
execute as @a[scores={place_torch=1..}] run tag @s add place_light
execute as @a[scores={place_cfire=1..}] run tag @s add place_light
execute as @a[scores={place_furnace=1..}] run tag @s add place_light
execute as @a[scores={place_smoker=1..}] run tag @s add place_light
execute as @a[scores={place_bfurnace=1..}] run tag @s add place_light
execute as @a[scores={place_gstone=1..}] run tag @s add place_light
execute as @a[scores={place_lava=1..}] run tag @s add place_light
execute as @a[scores={place_jlantern=1..}] run tag @s add place_light
execute as @a[scores={place_magma=1..}] run tag @s add place_light
execute as @a[scores={place_flint=1..}] run tag @s add place_light
execute as @a[scores={place_slantern=1..}] run tag @s add place_light

execute as @a[tag=place_light] at @s run function svplus:coldcast

execute as @a[tag=place_light] run scoreboard players reset @s place_torch
execute as @a[tag=place_light] run scoreboard players reset @s place_cfire
execute as @a[tag=place_light] run scoreboard players reset @s place_furnace
execute as @a[tag=place_light] run scoreboard players reset @s place_bfurnace
execute as @a[tag=place_light] run scoreboard players reset @s place_gstone
execute as @a[tag=place_light] run scoreboard players reset @s place_smoker
execute as @a[tag=place_light] run scoreboard players reset @s place_lava
execute as @a[tag=place_light] run scoreboard players reset @s place_jlantern
execute as @a[tag=place_light] run scoreboard players reset @s place_magma
execute as @a[tag=place_light] run scoreboard players reset @s place_flint
execute as @a[tag=place_light] run scoreboard players reset @s place_slantern
scoreboard players reset @a[tag=place_light] coldcast
execute as @a[tag=place_light] run tag @s remove place_light

execute as @a at @s if entity @e[type=area_effect_cloud,tag=cold_warm,distance=..3] run tag @s add warm
execute as @a at @s unless entity @e[type=area_effect_cloud,tag=cold_warm,distance=..3] run tag @s remove warm
execute as @e[type=area_effect_cloud,tag=cold_warm] at @s unless block ~ ~ ~ #minecraft:warm run kill @s
