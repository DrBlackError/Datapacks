#DrBlackError
#add +50 energy to the nearest player
execute as @e[tag=nuclear, tag=!owned, tag=got_uuid] if score @p uuid = @s uuid run scoreboard players add @p energy 50
execute as @e[tag=nuclear, tag=!owned, tag=got_uuid] if score @p uuid = @s uuid run tag @s add owned

execute as @e[tag=nuclear] at @s unless block ~ ~2 ~ minecraft:water run tag @s add killnuclear
execute as @e[tag=nuclear,tag=killnuclear] at @s run summon tnt ~ ~ ~
execute as @e[tag=nuclear,tag=killnuclear] at @s run kill @s
