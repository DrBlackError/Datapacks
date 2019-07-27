data modify entity @s Item.tag.tempsave set from entity @s Item.tag.save[-1]
execute store result score @s slot_data run data get entity @s Item.tag.tempsave.Slot

execute if score @s slot_data matches 0..8 run data modify entity @s Item.tag.hotbar append from entity @s Item.tag.save[-1]
execute if score @s slot_data matches 9..35 run function basicplus:9_35
execute if score @s slot_data matches 100..103 run function basicplus:100_103
execute if score @s slot_data matches -106 run function basicplus:106

execute as @s store success score @s gravesave run data remove entity @s Item.tag.save[-1]
execute as @s if score @s gravesave matches 1 run function basicplus:gravesave
