#DrBlackError
#heals the executing player with /trigger heal

#DrBlackError
#execution and reset
execute as @a[scores={heal=1..}] run scoreboard players enable @s heal
execute as @a[scores={heal=1..}] run effect give @s instant_health 5 255
execute as @a[scores={heal=1..}] run effect give @s saturation 5 255
execute as @a[scores={heal=1..}] run scoreboard players set @s heal 0
