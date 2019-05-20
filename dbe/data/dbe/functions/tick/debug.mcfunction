#DrBlackError
#Jeder Befehl, der hier eingetragen wird, wird in jedem (Game-)tick wiederholt ausgeführt

#DrBlackError
execute as @a[scores={debug=1}] run title @a actionbar ["",{"text":"x: "},{"score":{"name":"@s","objective":"xpos"}},{"text":" y: "},{"score":{"name":"@s","objective":"ypos"}},{"text":" z: "},{"score":{"name":"@s ","objective":"zpos"}},{"text":" Home: "},{"score":{"name":"@s","objective":"xhome"}},{"text":" "},{"score":{"name":"@s","objective":"yhome"}},{"text":" "},{"score":{"name":"@s ","objective":"zhome"}}]
