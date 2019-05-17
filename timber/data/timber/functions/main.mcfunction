### search ###
execute as @a[scores={t.wooden_axe=1..}] at @s run function timber:run
execute as @a[scores={t.stone_axe=1..}] at @s run function timber:run
execute as @a[scores={t.iron_axe=1..}] at @s run function timber:run
execute as @a[scores={t.golden_axe=1..}] at @s run function timber:run
execute as @a[scores={t.diamond_axe=1..}] at @s run function timber:run

### reset ###
gamerule sendCommandFeedback true
scoreboard players set @a t.sneak_time 0