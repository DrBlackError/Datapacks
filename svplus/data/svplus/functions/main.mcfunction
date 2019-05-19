#LittleRetard
#Jeder Befehl, der hier eingetragen wird, wird in jedem (Game-)tick wiederholt ausgeführt

#DrBlackRat
#startet die funktions
execute as @a at @s if score @s slayed_dragon matches 1.. if entity @e[type=minecraft:ender_dragon,distance=..100,limit=1] run effect give @s minecraft:slowness 1 1 true
execute as @a at @s if score @s slayed_dragon matches 1.. if entity @e[type=minecraft:ender_dragon,distance=..100,limit=1] run effect give @s minecraft:weakness 1 2 true
execute as @a at @s if score @s slayed_dragon matches 2.. if entity @e[type=minecraft:ender_dragon,distance=..100,limit=1] run effect give @s minecraft:weakness 1 1 true
execute as @a at @s if score @s slayed_dragon matches 4.. if entity @e[type=minecraft:ender_dragon,distance=..100,limit=1] run effect give @s minecraft:poison 1 1 true
execute as @a at @s if score @s slayed_dragon matches 5.. if entity @e[type=minecraft:ender_dragon,distance=..100,limit=1] run effect give @s minecraft:nausea 1 1 true

#?
#?
function svplus:bed

#IFloooI
#Spieler Count wird gezählt
function svplus:playerid

#IFloooI
#Anti lagg System Des Servers
function svplus:antilagg/antilagg

#IFloooI
#Punishment Scores für Spieler mit schlechtem benehmen da Temp-Ban nicht möglich
function svplus:punishment

#IFloooI
#Spielzeit
execute as @a run scoreboard players add @s tick 1
execute as @a if score @s tick matches 20 run scoreboard players add @s sekunde 1
execute as @a if score @s tick matches 20 run scoreboard players set @s tick 0
execute as @a if score @s sekunde matches 60 run scoreboard players add @s minute 1
execute as @a if score @s sekunde matches 60 run scoreboard players set @s sekunde 0
execute as @a if score @s minute matches 60 run scoreboard players add @s stunde 1
execute as @a if score @s minute matches 60 run scoreboard players set @s minute 0

#LittleRetard
#Macht alle im Creative unsichtbar
#effect give @a[gamemode=creative] invisibility 10 1 true

#IFloooI
#Clear Lagg
function svplus:antilagg/antimob

#execute as @a[x_rotation=-90] at @s if block ~ ~ ~ ladder run tp @s ~ ~2 ~
#execute as @a[x_rotation=90] at @s if block ~ ~-1 ~ ladder run tp @s ~ ~-2 ~
execute as @e[type=minecraft:snow_golem] at @s run setblock ~ ~ ~ minecraft:snow keep

#?
#?
function svplus:spunishment

#LittleRetard
#Kopfdrop bei Tot
function svplus:heads

#?
#?
function svplus:glass

#IFloooI
#"Frieren"-System
function svplus:cold

#LittleRetard
#actionbar
function svplus:actionbar

#LittleRetard
#stamina
function svplus:stamina

#LittleRetard
#timer
function svplus:timer

#LittleRetard
#nearblock
#function svplus:nearblock

#LittleRetard
#Admin
function svplus:admin

#LittleRetard
#Bossbar
function svplus:bossbar

#LittleRetard
#Staminaplus
function svplus:staminaplus
