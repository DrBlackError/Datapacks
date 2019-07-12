# Funktion as:cloud
data modify entity @s Pos set from entity @a[tag=targetPlayer,limit=1] SelectedItem.tag.storedPos
tp @a[tag=targetPlayer,limit=1] @s
kill @s