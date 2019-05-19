#DrBlackError
#Stamina System

#DrBlackError
#remove stamina for actions
execute as @a[scores={stamina=-49..,run=101..}] run scoreboard players remove @s stamina 1
execute as @a[scores={run=101..}] run scoreboard players set @s run 1
execute as @a[scores={jump=1}] run scoreboard players add @s run 100
execute as @a[scores={stamina=..99,run=0}] run scoreboard players add @s stamina 1
execute as @a[scores={stamina=100..149,run=0},tag=staminaplus] run scoreboard players add @s stamina 1
execute as @a[scores={timer=40}] run scoreboard players set @s run 0
execute as @a[scores={jump=1}] run scoreboard players set @s timer 0
execute as @a[scores={jump=1}] run scoreboard players set @s jump 0
execute as @a[nbt={OnGround:0b}] run scoreboard players add @s jumptimestamina 1
execute as @a[scores={jumptimestamina=1}] run scoreboard players remove @s stamina 1
execute as @a[scores={jumptimestamina=1..}] run scoreboard players set @s jumptimestamina 0

#DrBlackError
#effects at stamina=0
execute as @a[scores={stamina=0},tag=!stamina0] run effect give @s instant_damage
execute as @a[scores={stamina=0}] run tag @s add stamina0
execute as @a[scores={stamina=1..}] run tag @s remove stamina0

#DrBlackError
#Effekte bei negativen stamina Wert
execute as @a[scores={stamina=..-25},tag=!stamina-25] run effect give @s slowness 1 3
execute as @a[scores={stamina=..-25},tag=!stamina-25] run effect give @s nausea 20 1
execute as @a[scores={stamina=..-40},tag=!stamina-40] run effect give @s blindness 10 1
execute as @a[scores={stamina=..-40},tag=!stamina-40] run effect give @s wither 1 1

execute as @a[scores={stamina=0..10},tag=!stamina-40] run effect clear @s slowness
execute as @a[scores={stamina=0..10},tag=!stamina-40] run effect clear @s nausea
execute as @a[scores={stamina=0..10},tag=!stamina-40] run effect clear @s blindness
execute as @a[scores={stamina=0..10},tag=!stamina-40] run effect clear @s wither

#DrBlackError
#?
#execute as @a[scores={stamina=-25}] run tag @s add stamina-25
#execute as @a[scores={stamina=-24..}] run tag @s remove stamina-25

#DrBlackError
#let player die if stamina =-50, advancement
execute as @a[scores={stamina=-50},tag=!dead] run tellraw @a ["",{"selector":"@s"},{"text":" ist vor Überanstrengung gestorben"}]
execute as @a[scores={stamina=-50},tag=!dead,tag=!lebensmuede] run advancement grant @s only skyblockplus:lebensmuede
execute as @a[scores={stamina=-50}] run tag @s add dead
execute as @a[scores={stamina=-50}] run tag @s add lebensmuede
execute as @a[scores={stamina=-50}] run kill @s

#DrBlackError
#reset after death
execute as @a[scores={stamina=-49..}] run tag @s remove dead
