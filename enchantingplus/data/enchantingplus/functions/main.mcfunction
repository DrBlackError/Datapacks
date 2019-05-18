execute as @a[tag=books] run give @p minecraft:enchanted_book{ench:["slowfall"],display:{Name:"{\"text\":\"Buch des Langsamen Falls\",\"color\":\"aqua\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @p minecraft:enchanted_book{ench:["fireres"],display:{Name:"{\"text\":\"Buch der Feuerresistenz\",\"color\":\"dark_red\"}"},HideFlags:63} 1
execute as @a[tag=books] run tag @s remove books
function enchantingplus:enchantments
