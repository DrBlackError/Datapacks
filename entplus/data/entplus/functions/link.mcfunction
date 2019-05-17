#execute as @e[type=item,tag=unbreaking_4] at @s if score @p[distance=..7] enchanttime matches 0 run data merge entity @e[type=item,limit=1,distance=..5] {Item:{tag:{Enchantments:[{lvl:4s,id:"minecraft:unbreaking"}]}}}
execute if entity @e[type=item,distance=..1,limit=1,nbt=!{Item:{tag:{Unbreaking:4}}}] run scoreboard players add @s enchanttime 1
execute if score @s enchanttime matches 100 run data merge entity @e[type=item,limit=1,distance=..4] {Item:{tag:{Enchantments:[{lvl:4s,id:"minecraft:unbreaking"}]}}}
execute if score @s enchanttime matches 100 run scoreboard players set @s enchanttime -20
execute if score @s enchanttime matches 0 run kill @s
