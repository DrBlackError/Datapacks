scoreboard players remove @s slot_data 100
execute as @s store result entity @s Item.tag.save[-1].Slot byte 1 run scoreboard players get @s slot_data
data modify entity @s Item.tag.armor append from entity @s Item.tag.save[-1]
