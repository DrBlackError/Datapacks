#DrBlackError
#Gibt einem Admin die Items um Spawnpunkte zu setzen/löschen
give @p minecraft:armor_stand{display:{Name:"{\"text\":\"Neuer Spawnpunkt Rot\"}"},EntityTag:{Small:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpawnRot"]}} 1
give @p minecraft:armor_stand{display:{Name:"{\"text\":\"Neuer Spawnpunkt Blau\"}"},EntityTag:{Small:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["SpawnBlau"]}} 1
give @p minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Nächstgelegenen roten Spawn entfernen\"}"},Unbreakable:1b,Damage:1} 1
give @p minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Nächstgelegenen blauen Spawn entfernen\"}"},Unbreakable:1b,Damage:2} 1
give @p minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Alle Spawns entfernen\"}"},Unbreakable:1b,Damage:3} 1

scoreboard players set @s tspawn 0
