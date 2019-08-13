#DrBlackError
#Jeder Befehl, der hier eingetragen wird, wird in jedem (Game-)tick wiederholt ausgeführt

function basicplus:timetag
function basicplus:exact
#custom crafting
function basicplus:customcrafting/crafting
function basicplus:customcrafting/crafting_recepies

#IFloooI
#Gamemodes
function basicplus:gamemode/1
function basicplus:gamemode/2
function basicplus:gamemode/3
scoreboard players enable @a 1
scoreboard players enable @a 2
scoreboard players enable @a 3
function basicplus:afksystem

#IFloooI
#UUID system
function basicplus:uuid

#IFloooI
#ArmorChanger
function basicplus:quickchange/armorchange
#execute as @e[tag=saver,type=item,nbt={Item:{id:"minecraftpaper",Count:1b}}] run function basicplus:gravetry
execute as @a[scores={gravedeath=1}] run function basicplus:gravetry

#DrBlackError
#Lockable conainer
function basicplus:lock
