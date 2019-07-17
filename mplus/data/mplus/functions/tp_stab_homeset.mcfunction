#DrBlackRat
#home_spawnpoint setzen unf forceload machen
#main

execute as @a[scores={tp_home_click=1..},tag=!w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run tellraw @s ["",{"text":"Error: Tag 'w1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add w1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add w1 [klicke um auszuführen]"}]}}}]
execute as @a[scores={tp_home_click=1..},tag=!z1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run tellraw @s ["",{"text":"Error: Tag 'z1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add z1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add z1 [klicke um auszuführen]"}]}},"bold":false}]

execute as @e[tag=home_spawnpoint] at @s if score @s uuid = @a[limit=1,scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] uuid run forceload remove ~ ~ ~ ~
execute as @e[tag=home_spawnpoint] at @s if score @s uuid = @a[limit=1,scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] uuid run kill @s
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:999999999,Team:"HomePoint",Tags:["home_spawnpoint","get_uuid"]}
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] at @s run team join HomePoint @e[tag=home_spawnpoint]
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] at @s run execute as @e[tag=home_spawnpoint] at @s run forceload add ~ ~ ~ ~
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] at @s run tag @s add home_set

execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] at @s run spawnpoint @s
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] at @s run playsound minecraft:entity.arrow.hit_player ambient @s
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:0}] at @s run tellraw @s ["",{"text":"Homepunkt erfolgreich gesetzt!","color":"aqua"}]

#execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:-1}] at @s run tellraw @s ["",{"text":"Du kannst dein Home nicht im Nether setzen!","color":"red"}]
#execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:-1}] at @s run playsound minecraft:block.anvil.destroy master @s
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:-1}] at @s run summon tnt
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:-1}] at @s run tellraw @s ["",{"text":"Es geht nicht mit Betten also auch nicht mit Stäben!","color":"red"}]

#execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:1}] at @s run tellraw @s ["",{"text":"Du kannst dein Home nicht im End setzen!","color":"red"}]
#execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:1}] at @s run playsound minecraft:block.anvil.destroy master @s
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:1}] at @s run summon tnt
execute as @a[scores={tp_home_click=1..},tag=z1,tag=w1,nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}],Dimension:1}] at @s run tellraw @s ["",{"text":"Es geht nicht mit Betten also auch nicht mit Stäben!","color":"red"}]

#DrBlackRat
#reste
scoreboard players set @a[scores={tp_home_click=1..}] tp_home_click 0

#DrBlackRat
#leben des spawn points
execute as @e[nbt={Age:999999800},tag=home_spawnpoint] run data merge entity @s {Age:0}
