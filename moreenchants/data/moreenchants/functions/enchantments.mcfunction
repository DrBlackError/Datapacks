execute as @a[nbt={Inventory:[{Slot:100b,tag:{ench:["slowfall"]}}]}] run effect give @s minecraft:slow_falling 2 1 true
execute as @a[nbt={Inventory:[{Slot:102b,tag:{ench:["fireres"]}}]}] run effect give @s minecraft:fire_resistance 2 1 true
execute as @a[nbt={SelectedItem:{tag:{ench:["glowattack"]}}}]
#poisonattack
execute as @a[tag=!poisonsword,nbt=!{SelectedItem:{id:"minecraft:enchanted_book",Count:1b}},nbt={SelectedItem:{tag:{ench:["poisonattack"]}}}] run tag @s add poisonsword
execute as @a[tag=poisonsword,nbt=!{SelectedItem:{tag:{ench:["poisonattack"]}}}] run tag @s remove poisonsword
#1
##~1 ~ ~
#execute as @a at @s if score timer timer matches 1 run particle minecraft:portal ~1 ~1 ~ 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 2 run particle minecraft:portal ~1 ~1 ~0.1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 3 run particle minecraft:portal ~1 ~1 ~0.2 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 4 run particle minecraft:portal ~1 ~1 ~0.3 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 5 run particle minecraft:portal ~1 ~1 ~0.4 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 6 run particle minecraft:portal ~1 ~1 ~0.5 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 7 run particle minecraft:portal ~1 ~1 ~0.6 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 8 run particle minecraft:portal ~1 ~1 ~0.7 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 9 run particle minecraft:portal ~1 ~1 ~0.8 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 10 run particle minecraft:portal ~1 ~1 ~0.9 0.1 0.1 0.1 0.00000000001 50 force
#
##2
##~1 ~ ~1
#execute as @a at @s if score timer timer matches 11 run particle minecraft:portal ~1 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 12 run particle minecraft:portal ~0.9 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 13 run particle minecraft:portal ~0.8 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 14 run particle minecraft:portal ~0.7 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 15 run particle minecraft:portal ~0.6 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 16 run particle minecraft:portal ~0.5 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 17 run particle minecraft:portal ~0.4 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 18 run particle minecraft:portal ~0.3 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 19 run particle minecraft:portal ~0.2 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 20 run particle minecraft:portal ~0.1 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#
##3
##~ ~ ~1
#execute as @a at @s if score timer timer matches 21 run particle minecraft:portal ~ ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 22 run particle minecraft:portal ~-0.1 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 23 run particle minecraft:portal ~-0.2 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 24 run particle minecraft:portal ~-0.3 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 25 run particle minecraft:portal ~-0.4 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 26 run particle minecraft:portal ~-0.5 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 27 run particle minecraft:portal ~-0.6 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 28 run particle minecraft:portal ~-0.7 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 29 run particle minecraft:portal ~-0.8 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 30 run particle minecraft:portal ~-0.9 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#
##4
##~-1 ~ ~1
#execute as @a at @s if score timer timer matches 31 run particle minecraft:portal ~-1 ~1 ~1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 32 run particle minecraft:portal ~-1 ~1 ~0.9 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 33 run particle minecraft:portal ~-1 ~1 ~0.8 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 34 run particle minecraft:portal ~-1 ~1 ~0.7 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 35 run particle minecraft:portal ~-1 ~1 ~0.6 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 36 run particle minecraft:portal ~-1 ~1 ~0.5 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 37 run particle minecraft:portal ~-1 ~1 ~0.4 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 38 run particle minecraft:portal ~-1 ~1 ~0.3 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 39 run particle minecraft:portal ~-1 ~1 ~0.2 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 40 run particle minecraft:portal ~-1 ~1 ~0.1 0.1 0.1 0.1 0.00000000001 50 force
#
##5
##~-1 ~ ~
#execute as @a at @s if score timer timer matches 41 run particle minecraft:portal ~-1 ~1 ~ 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 42 run particle minecraft:portal ~-1 ~1 ~-0.1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 43 run particle minecraft:portal ~-1 ~1 ~-0.2 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 44 run particle minecraft:portal ~-1 ~1 ~-0.3 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 45 run particle minecraft:portal ~-1 ~1 ~-0.4 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 46 run particle minecraft:portal ~-1 ~1 ~-0.5 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 47 run particle minecraft:portal ~-1 ~1 ~-0.6 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 48 run particle minecraft:portal ~-1 ~1 ~-0.7 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 49 run particle minecraft:portal ~-1 ~1 ~-0.8 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 50 run particle minecraft:portal ~-1 ~1 ~-0.9 0.1 0.1 0.1 0.00000000001 50 force
#
##6
##~-1 ~ ~-1
#execute as @a at @s if score timer timer matches 51 run particle minecraft:portal ~-1 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 52 run particle minecraft:portal ~-0.9 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 53 run particle minecraft:portal ~-0.8 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 54 run particle minecraft:portal ~-0.7 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 55 run particle minecraft:portal ~-0.6 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 56 run particle minecraft:portal ~-0.5 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 57 run particle minecraft:portal ~-0.4 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 58 run particle minecraft:portal ~-0.3 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 59 run particle minecraft:portal ~-0.2 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 60 run particle minecraft:portal ~-0.1 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#
#
##7
##~ ~ -1
#execute as @a at @s if score timer timer matches 61 run particle minecraft:portal ~ ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 62 run particle minecraft:portal ~0.1 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 63 run particle minecraft:portal ~0.2 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 64 run particle minecraft:portal ~0.3 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 65 run particle minecraft:portal ~0.4 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 66 run particle minecraft:portal ~0.5 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 67 run particle minecraft:portal ~0.6 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 68 run particle minecraft:portal ~0.7 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 69 run particle minecraft:portal ~0.8 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 70 run particle minecraft:portal ~0.9 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#
#
##8
##~1 ~ ~-1
#execute as @a at @s if score timer timer matches 71 run particle minecraft:portal ~1 ~1 ~-1 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 72 run particle minecraft:portal ~1 ~1 ~-0.9 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 73 run particle minecraft:portal ~1 ~1 ~-0.8 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 74 run particle minecraft:portal ~1 ~1 ~-0.7 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 75 run particle minecraft:portal ~1 ~1 ~-0.6 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 76 run particle minecraft:portal ~1 ~1 ~-0.5 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 77 run particle minecraft:portal ~1 ~1 ~-0.4 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 78 run particle minecraft:portal ~1 ~1 ~-0.3 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 79 run particle minecraft:portal ~1 ~1 ~-0.2 0.1 0.1 0.1 0.00000000001 50 force
#execute as @a at @s if score timer timer matches 80 run particle minecraft:portal ~1 ~1 ~-0.1 0.1 0.1 0.1 0.00000000001 50 force
#
