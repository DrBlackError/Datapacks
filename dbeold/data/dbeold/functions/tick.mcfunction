#DrBlackError
#Jeder Befehl, der hier eingetragen wird, wird in jedem (Game-)tick wiederholt ausgeführt
#Letzte Änderung: DrBlackError 14 (Blaue & Rote kill Befehle getrennt)

execute as @a[scores={tspawn=1},limit=1] at @s run function dbeold:trigger/spawn



#DrBlackError by Halbzwilling
#Tracken von Carrot clicks
#main

execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:1,Unbreakable:1b}}}] at @s run kill @e[tag=SpawnRot,sort=nearest,limit=1]
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:2,Unbreakable:1b}}}] at @s run kill @e[tag=SpawnBlau,sort=nearest,limit=1]
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:3,Unbreakable:1b}}}] at @s run kill @e[tag=SpawnRot]
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:3,Unbreakable:1b}}}] at @s run kill @e[tag=SpawnBlau]
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:1,Unbreakable:1b}}}] at @s run say Carrot 1
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:2,Unbreakable:1b}}}] at @s run say Carrot 2
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:3,Unbreakable:1b}}}] at @s run say Carrot 3
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:4,Unbreakable:1b}}}] at @s run say Carrot 4
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:5,Unbreakable:1b}}}] at @s run say Carrot 5
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:6,Unbreakable:1b}}}] at @s run say Carrot 6
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:7,Unbreakable:1b}}}] at @s run say Carrot 7
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:8,Unbreakable:1b}}}] at @s run say Carrot 8
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:9,Unbreakable:1b}}}] at @s run say Carrot 9
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:10,Unbreakable:1b}}}] at @s run say Carrot 10
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:11,Unbreakable:1b}}}] at @s run say Carrot 11
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:12,Unbreakable:1b}}}] at @s run say Carrot 12
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:13,Unbreakable:1b}}}] at @s run say Carrot 13
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:14,Unbreakable:1b}}}] at @s run say Carrot 14
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:15,Unbreakable:1b}}}] at @s run say Carrot 15
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:16,Unbreakable:1b}}}] at @s run say Carrot 16
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:17,Unbreakable:1b}}}] at @s run say Carrot 17
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:18,Unbreakable:1b}}}] at @s run say Carrot 18
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:19,Unbreakable:1b}}}] at @s run say Carrot 19
execute as @a[scores={exact=1..},nbt={SelectedItem:{tag:{Damage:20,Unbreakable:1b}}}] at @s run say Carrot 20

scoreboard players reset @a[scores={exact=1..}] exact
