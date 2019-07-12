#DrBlackRat - Hardly Performance Fixed by IFloooI

#Saves Coordiante From Player in
execute as @a[scores={tpclick_home=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11}}]}] at @s run data modify entity @s Inventory[{Slot:-106b}].tag.storedPos set from entity @s Pos

execute as @a[scores={tpclick_home=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11}}]}] at @s run playsound minecraft:entity.arrow.hit_player ambient @s
execute as @a[scores={tpclick_home=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:11}}]}] at @s run tellraw @s ["",{"text":"Homepunkt erfolgreich gesetzt!","color":"aqua"}]
#Execute teleport
execute as @a[scores={tpclick_home=1..},nbt={SelectedItem:{tag:{CustomModelData:11}}}] at @s run function chunkloader:teleport/player
scoreboard players set @a[scores={tpclick_home=1..}] tpclick_home 0
