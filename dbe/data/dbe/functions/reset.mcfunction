#Reset UUID of all

scoreboard players reset @e uuid
kill @e[tag=got_uuid]
scoreboard players set Max_Player uuid 0
tag @a remove uuid
