#DrBlackRat
#home_spawnpoint setzen
#main

execute as @e[tag=home_spawnpoint] at @s if score @s uuid = @a[limit=1,scores={tp_home_click=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] uuid run kill @s
execute as @a[scores={tp_home_click=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:999999999,Tags:["home_spawnpoint","uuid_rotate","uuid_zero"]}
execute as @a[scores={tp_home_click=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run tp @e[tag=uuid_zero,distance=..1] @s
execute as @a[scores={tp_home_click=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run scoreboard players set @e[tag=uuid_zero,distance=..1] uuid 0
execute as @e[tag=uuid_zero] at @s run tag @s remove uuid_zero
execute as @a at @s if entity @e[tag=uuid_rotate,distance=..1] if score @s uuid = @e[tag=uuid_rotate,distance=..1,limit=1] uuid run tag @e[tag=uuid_rotate,distance=..1,limit=1] remove uuid_rotate
execute as @e[tag=uuid_rotate] at @s run scoreboard players add @s uuid 1
execute as @a[scores={tp_home_click=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run spawnpoint @s
execute as @a[scores={tp_home_click=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run playsound minecraft:entity.arrow.hit_player ambient @s
execute as @a[scores={tp_home_click=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:1}}]}] at @s run tellraw @s ["",{"text":"Homepunkt erfolgreich gesetzt!","color":"aqua"}]

#reste
scoreboard players set @a[scores={tp_home_click=1..}] tp_home_click 0

#leben des spawn points
execute as @e[nbt={Age:999999800},tag=home_spawnpoint] run data merge entity @s {Age:0}
