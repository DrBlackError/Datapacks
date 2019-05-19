#IFloooI
execute as @a[nbt={Inventory:[{Slot:100b,tag:{ench:["slowfall"]}}]}] run effect give @s minecraft:slow_falling 2 0 true
execute as @a[nbt={Inventory:[{Slot:102b,tag:{ench:["fireres"]}}]}] run effect give @s minecraft:fire_resistance 2 0 true
execute as @a[nbt={SelectedItem:{tag:{ench:["glowattack"]}}}]
#poisonattack
execute as @a[tag=!poisonsword,nbt=!{SelectedItem:{id:"minecraft:enchanted_book",Count:1b}},nbt={SelectedItem:{tag:{ench:["poisonattack"]}}}] run tag @s add poisonsword
execute as @a[tag=poisonsword,nbt=!{SelectedItem:{tag:{ench:["poisonattack"]}}}] run tag @s remove poisonsword
