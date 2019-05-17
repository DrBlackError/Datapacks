### turn destroy leaves on ###
scoreboard players set break_leaves timber 1
tellraw @s ["",{"text":"Destroy Leaves "},{"text":"enabled","color":"green"},{"text":"."}]
gamerule sendCommandFeedback false