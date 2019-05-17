### turn destroy leaves off ###
scoreboard players set break_leaves timber 0
tellraw @s [{"text":"Destroy Leaves "},{"text":"disabled","color":"red"},{"text":"."}]
gamerule sendCommandFeedback false