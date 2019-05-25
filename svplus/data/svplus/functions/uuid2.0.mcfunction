#DrBlackError
#uuid-system based on Minecraft-UUIDMost
execute as @a[tag=!uuidmost] store result score @s UUIDMost run data get entity @s UUIDMost
execute as @a[tag=!uuidmost] run tag @s add uuidmost
