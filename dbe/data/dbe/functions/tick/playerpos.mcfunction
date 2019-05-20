#DrBlackError
#store playerposition in scoreboard for each player
execute as @a at @s store result score @s xpos run data get entity @s Pos[0]
execute as @a at @s store result score @s ypos run data get entity @s Pos[1]
execute as @a at @s store result score @s zpos run data get entity @s Pos[2]
