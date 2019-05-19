
#Leder
function enchantingplus:leather/helmet
function enchantingplus:leather/chestplate
function enchantingplus:leather/leggings
function enchantingplus:leather/boots

#Gold
function enchantingplus:gold/helmet
function enchantingplus:gold/chestplate
function enchantingplus:gold/leggings
function enchantingplus:gold/boots
#Iron
function enchantingplus:iron/helmet
function enchantingplus:iron/chestplate
function enchantingplus:iron/leggings
function enchantingplus:iron/boots
#Diamond
function enchantingplus:diamond/helmet
function enchantingplus:diamond/chestplate
function enchantingplus:diamond/leggings
function enchantingplus:diamond/boots
#Swords
function enchantingplus:weapons/wooden_sword
function enchantingplus:weapons/stone_sword
function enchantingplus:weapons/golden_sword
function enchantingplus:weapons/iron_sword
function enchantingplus:weapons/diamond_sword


execute as @a[tag=books] run give @p minecraft:enchanted_book{ench:["glowattack"],display:{Name:"{\"text\":\"Buch der Leuchtenden Berührung\",\"color\":\"gold\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @p minecraft:enchanted_book{ench:["glowattack"],display:{Name:"{\"text\":\"Buch der Vergiftenden Berührung\",\"color\":\"green\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @p minecraft:enchanted_book{ench:["slowfall"],display:{Name:"{\"text\":\"Buch des Langsamen Falls\",\"color\":\"aqua\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @p minecraft:enchanted_book{CustomModelData:2,ench:["fireres"],display:{Name:"{\"text\":\"Buch der Feuerresistenz\",\"color\":\"dark_red\"}"},HideFlags:63} 1
execute as @a[tag=books] run tag @s remove books
function enchantingplus:enchantments
