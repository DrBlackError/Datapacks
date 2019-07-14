#DrBlackRat
#staff of healing

#timer
execute as @a[scores={heal_click=1..,heal_timer=..19,mana=1..,life=..19},tag=w10,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] at @s run scoreboard players add @s heal_timer 1
execute as @a[scores={heal_click=1..,heal_timer=..19,mana=0,life=..19},tag=w10,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] at @s run tellraw @s ["",{"text":"Du hast nicht genug Mana! ","color":"aqua"},{"text":"Benötigt: ","color":"blue"},{"text":"1","color":"green","bold":true}]
execute as @a[scores={heal_click=1..,heal_timer=..19,mana=1..,life=20..},tag=w10,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] at @s run tellraw @s ["",{"text":"Du hast bereits volles Leben!","color":"red"}]
execute as @a[scores={heal_timer=20}] at @s run scoreboard players set @s heal_click -1

#particel
execute as @e[tag=heal_p] at @s run tp @s ~ ~ ~ ~100 ~
execute as @e[tag=heal_p] at @s positioned ^ ^ ^01 run particle minecraft:heart ~ ~ ~ 0 0.5 0 0 1

execute as @a[scores={heal_timer=14,mana=1..,life=..19}] at @s run effect give @s minecraft:regeneration 2 1 true
execute as @a[scores={heal_timer=1,mana=1..,life=..19}] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:20,Tags:["heal_p"]}
execute as @a[scores={heal_timer=1,mana=1..,life=..19}] at @s run effect give @s minecraft:slowness 2 3 true
execute as @a[scores={heal_timer=20,mana=1..,life=..19}] at @s run playsound minecraft:entity.illusioner.cast_spell master @a[distance=..10]


#reset
execute as @a[scores={heal_click=1..},tag=!w10,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] at @s run tellraw @s ["",{"text":"Error: Tag 'w10' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add w10"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add w10 [klicke um auszuführen]"}]}},"bold":false}]
execute as @a[scores={heal_click=1..},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] at @s run scoreboard players set @s heal_click 0
execute as @a[scores={heal_click=1..},tag=!w10,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] at @s run scoreboard players set @s heal_click 0
execute as @a[scores={heal_click=1..,life=20..}] at @s run scoreboard players set @s heal_timer 0
execute as @a[scores={heal_click=1..,life=20..}] at @s run scoreboard players set @s heal_click 0
execute as @a[scores={heal_timer=20,mana=1..,life=..19}] at @s run scoreboard players remove @s mana 1
execute as @a[scores={heal_timer=20}] at @s run scoreboard players set @s heal_timer 0
execute as @a[scores={heal_click=-1}] at @s run scoreboard players set @s heal_click 0
