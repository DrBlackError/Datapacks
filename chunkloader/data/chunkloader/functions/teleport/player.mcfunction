tag @s add targetPlayer
summon area_effect_cloud ~ ~ ~ {Tags:["marker_cloud"]}
execute as @e[type=area_effect_cloud,tag=marker_cloud,limit=1] run function chunkloader:teleport/cloud
tag @s remove targetPlayer
