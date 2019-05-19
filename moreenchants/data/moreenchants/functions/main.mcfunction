
#Leder
function moreenchants:leather/helmet
function moreenchants:leather/chestplate
function moreenchants:leather/leggings
function moreenchants:leather/boots

#Gold
function moreenchants:gold/helmet
function moreenchants:gold/chestplate
function moreenchants:gold/leggings
function moreenchants:gold/boots
#Iron
function moreenchants:iron/helmet
function moreenchants:iron/chestplate
function moreenchants:iron/leggings
function moreenchants:iron/boots
#Diamond
function moreenchants:diamond/helmet
function moreenchants:diamond/chestplate
function moreenchants:diamond/leggings
function moreenchants:diamond/boots
#Swords
function moreenchants:weapons/wooden_sword
function moreenchants:weapons/stone_sword
function moreenchants:weapons/golden_sword
function moreenchants:weapons/iron_sword
function moreenchants:weapons/diamond_sword

function moreenchants:island

execute as @a[tag=books] run give @p minecraft:enchanted_book{CustomModelData:6,ench:["glowattack"],display:{Name:"{\"text\":\"Buch der Leuchtenden Berührung\",\"color\":\"gold\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @p minecraft:enchanted_book{CustomModelData:5,ench:["poisonattack"],display:{Name:"{\"text\":\"Buch der Vergiftenden Berührung\",\"color\":\"green\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @p minecraft:enchanted_book{CustomModelData:2,ench:["slowfall"],display:{Name:"{\"text\":\"Buch des Langsamen Falls\",\"color\":\"aqua\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @p minecraft:enchanted_book{CustomModelData:1,ench:["fireres"],display:{Name:"{\"text\":\"Buch der Feuerresistenz\",\"color\":\"dark_red\"}"},HideFlags:63} 1
execute as @a[tag=books] run tag @s remove books
function moreenchants:enchantments
