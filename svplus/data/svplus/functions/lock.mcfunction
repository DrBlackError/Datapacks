#DrBlackError
#lock container

execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s if block ~ ~-1 ~ #basicplus:lockable run execute as @s at @s align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~-1 ~ {Team:"Lock",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["get_uuid","lock"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s if block ~ ~-1 ~ #basicplus:lockable run kill @s

execute as @e[tag=lock] at @s unless score @p[distance=..15] uuid = @s uuid run tag @s add locked
execute as @e[tag=lock] at @s if score @p[distance=..15] uuid = @s uuid run tag @s remove unlocked
execute as @e[tag=lock] at @s if score @p[distance=..15] uuid = @s uuid run tag @s remove lock_off
execute as @e[tag=lock,tag=locked,tag=!lock_on] at @s unless score @p[distance=..15] uuid = @s uuid align xyz positioned ~0.5 ~-0.35 ~0.5 unless entity @e[type=slime,distance=..1] run summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"Lock",NoAI:1b,Size:2,Tags:["locker"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200000,ShowParticles:0b}]}
execute as @e[tag=lock,tag=locked,tag=!lock_on] at @s unless score @p[distance=..15] uuid = @s uuid run tag @s add lock_on

execute as @e[tag=lock] at @s if score @p[distance=..5] uuid = @s uuid run tag @s add unlocked
execute as @e[tag=lock] at @s if score @p[distance=..5] uuid = @s uuid run tag @s remove locked
execute as @e[tag=lock] at @s if score @p[distance=..5] uuid = @s uuid run tag @s remove lock_on
execute as @e[tag=lock,tag=unlocked,tag=!lock_off] at @s if score @p[distance=..5] uuid = @s uuid run tp @e[type=slime,distance=..1] ~ ~-500 ~
execute as @e[tag=lock,tag=unlocked,tag=!lock_off] at @s if score @p[distance=..5] uuid = @s uuid run tag @s add lock_off

execute as @e[tag=lock] at @s unless block ~ ~ ~ #basicplus:lockable run kill @s
