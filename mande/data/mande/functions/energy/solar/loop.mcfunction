#DrBlackError
#add +1 energy to the nearest player
execute as @e[tag=solar, tag=!owned, tag=got_uuid] if score @p uuid = @s uuid run scoreboard players add @p energy 1
execute as @e[tag=solar, tag=!owned, tag=got_uuid] if score @p uuid = @s uuid run tag @s add owned
