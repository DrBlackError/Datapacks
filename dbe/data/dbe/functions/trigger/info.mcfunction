#DrBlackError
#gives the executing player a info about himself /trigger info

#DrBlackError
#execution and reset
execute as @a[scores={info=1..}] run scoreboard players enable @s info
execute as @a[scores={info=1..}] run tellraw @s ["",{"text":"Deine UUID lautet: "},{"score":{"name":"@s","objective":"uuid"}}]
execute as @a[scores={info=1..}] run scoreboard players set @s info 0
