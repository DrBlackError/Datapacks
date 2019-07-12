#DrBlackError and DrBlackRat
#staff of healing

execute as @a[scores={channel=2..}] at @s run scoreboard players remove @s channel 1
execute as @a[scores={channel=1..,channel_timer=..19}] at @s run scoreboard players add @s channel_timer 1
execute as @a[scores={channel=1..,channel_timer=20}] at @s run scoreboard players remove @s channel 1
execute as @a[scores={channel_timer=20}] at @s run scoreboard players set @s channel_timer 0
