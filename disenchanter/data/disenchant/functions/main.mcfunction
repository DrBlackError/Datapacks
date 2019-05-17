execute as @e[type=armor_stand,tag=disenchant] at @s unless block ~ ~-1 ~ minecraft:dispenser{Items: []} run function disenchant:disenchant
function disenchant:crafting
function disenchant:onplace
