#DrBlackError modified by DrBlackRat
#teleport stab
#mplus/wandc mplus/wand1loop mplus/setup

execute as @a[scores={exact=1, mana=5..},tag=w1] at @s run scoreboard players set @s tptime 50
execute as @a[scores={exact=1, mana=5..},tag=w1] at @s run scoreboard players remove @s mana 5
