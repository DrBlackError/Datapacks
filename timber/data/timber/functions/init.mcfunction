scoreboard objectives add t.wooden_axe minecraft.used:minecraft.wooden_axe
scoreboard objectives add t.stone_axe minecraft.used:minecraft.stone_axe
scoreboard objectives add t.iron_axe minecraft.used:minecraft.iron_axe
scoreboard objectives add t.golden_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add t.diamond_axe minecraft.used:minecraft.diamond_axe

scoreboard objectives add t.sneak_time minecraft.custom:minecraft.sneak_time

scoreboard objectives add timber dummy

scoreboard players reset durability timber

execute store result score break_leaves timber run scoreboard players get break_leaves timber