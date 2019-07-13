#DrBlackError modified by DrBlackRat
#teleport stab
#mplus/wandc mplus/wand1loop mplus/setup

execute as @a[scores={exact=1, mana=5..},tag=w1,tag=z1] at @s run scoreboard players set @s tptime 50
execute as @a[scores={exact=1, mana=5..},tag=w1,tag=z1] at @s run scoreboard players remove @s mana 5
execute as @a[scores={exact=1, mana=..4},tag=w1,tag=z1] at @s run tellraw @s ["",{"text":"Du hast nicht genug Mana! ","color":"aqua"},{"text":"Benötigt: ","color":"blue"},{"text":"5","color":"green","bold":true}]
execute as @a[scores={exact=1}, tag=!w1] at @s run tellraw @s ["",{"text":"Error: Tag 'w1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add w1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add w1 [klicke um auszuführen]"}]}}}]
execute as @a[scores={exact=1}, tag=!z1] at @s run tellraw @s ["",{"text":"Error: Tag 'z1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add z1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add z1 [klicke um auszuführen]"}]}},"bold":false}]
