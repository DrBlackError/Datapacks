kill @e[tag=tools_random]

execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random0"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random1"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random2"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random3"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random4"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random5"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random6"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random7"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random8"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random9"],Invisible:1b,NoGravity:1b}

tag @e[tag=tools_random,sort=random,limit=1] add tools_random_sel

kill @e[tag=tools_random,tag=!tools_random_sel]

execute if entity @e[tag=tools_random0] run scoreboard players set #tools_random_return math_numbers 0
execute if entity @e[tag=tools_random1] run scoreboard players set #tools_random_return math_numbers 1
execute if entity @e[tag=tools_random2] run scoreboard players set #tools_random_return math_numbers 2
execute if entity @e[tag=tools_random3] run scoreboard players set #tools_random_return math_numbers 3
execute if entity @e[tag=tools_random4] run scoreboard players set #tools_random_return math_numbers 4
execute if entity @e[tag=tools_random5] run scoreboard players set #tools_random_return math_numbers 5
execute if entity @e[tag=tools_random6] run scoreboard players set #tools_random_return math_numbers 6
execute if entity @e[tag=tools_random7] run scoreboard players set #tools_random_return math_numbers 7
execute if entity @e[tag=tools_random8] run scoreboard players set #tools_random_return math_numbers 8
execute if entity @e[tag=tools_random9] run scoreboard players set #tools_random_return math_numbers 9

kill @e[tag=tools_random]

tag @e[tag=tools_random_sel] remove tools_random_sel



execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random0"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random1"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random2"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random3"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random4"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random5"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random6"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random7"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random8"],Invisible:1b,NoGravity:1b}
execute at @e[type=armor_stand,name=Rite+] run summon armor_stand ~ ~2 ~ {Tags:["tools_random","tools_random9"],Invisible:1b,NoGravity:1b}

tag @e[tag=tools_random,sort=random,limit=1] add tools_random_sel

kill @e[tag=tools_random,tag=!tools_random_sel]

execute if entity @e[tag=tools_random0] run scoreboard players set #tools_random_x math_numbers 0
execute if entity @e[tag=tools_random1] run scoreboard players set #tools_random_x math_numbers 1
execute if entity @e[tag=tools_random2] run scoreboard players set #tools_random_x math_numbers 2
execute if entity @e[tag=tools_random3] run scoreboard players set #tools_random_x math_numbers 3
execute if entity @e[tag=tools_random4] run scoreboard players set #tools_random_x math_numbers 4
execute if entity @e[tag=tools_random5] run scoreboard players set #tools_random_x math_numbers 5
execute if entity @e[tag=tools_random6] run scoreboard players set #tools_random_x math_numbers 6
execute if entity @e[tag=tools_random7] run scoreboard players set #tools_random_x math_numbers 7
execute if entity @e[tag=tools_random8] run scoreboard players set #tools_random_x math_numbers 8
execute if entity @e[tag=tools_random9] run scoreboard players set #tools_random_x math_numbers 9

kill @e[tag=tools_random]

tag @e[tag=tools_random_sel] remove tools_random_sel

scoreboard players set #10 math_numbers 10
scoreboard players operation #tools_random_return math_numbers *= #10 math_numbers
scoreboard players operation #tools_random_return math_numbers += #tools_random_x math_numbers
