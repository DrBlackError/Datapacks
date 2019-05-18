#IFloooI
#?
execute as @a[scores={punishment=1..}] at @s run gamemode adventure @s
execute as @a[scores={punishment=1..}] at @s run tag @s add punished
execute as @a[scores={punishment=1..}] at @s run scoreboard players remove @s punishment 1
execute as @a[scores={punishment=0},tag=!op,tag=wl,tag=punished] run tag @s remove punished
scoreboard players enable @a warnings
execute as @a[scores={warnings=1}] run tellraw @s ["",{"text":"Bis jetzt hast du: "},{"score":{"name":"@s","objective":"punish_warnings"},"color":"dark_red"},{"text":" Verwarnung/en","color":"none"}]
execute as @a[scores={warnings=1..}] run scoreboard players set @s warnings 0
execute as @a[scores={punishment=1..},tag=!verwarnt] run scoreboard players add @s punish_warnings 1
execute as @a[scores={punishment=1..,punish_warnings=1},tag=!verwarnt] at @s run tellraw @a ["",{"text":"Der Spieler: ","color":"yellow"},{"selector":"@s","color":"dark_purple"},{"text":" wurde wegen eines Regelverstoßes zum 1. verwarnt und darf nach seiner Auszeit wieder Spielen!","color":"yellow"}]
execute as @a[scores={punishment=1..,punish_warnings=2},tag=!verwarnt] at @s run tellraw @a ["",{"text":"Der Spieler: ","color":"yellow"},{"selector":"@s","color":"dark_purple"},{"text":" wurde wegen eines Regelverstoßes zum 2.mal verwarnt und darf nach seiner Auszeit wieder Spielen!","color":"yellow"}]
execute as @a[scores={punishment=1..,punish_warnings=3},tag=!verwarnt] at @s run tellraw @a ["",{"text":"Der Spieler: ","color":"yellow"},{"selector":"@s","color":"dark_purple"},{"text":" wurde wegen eines Regelverstoßes zum 3.mal verwarnt und wird sobald ein Admin on ist für 24h Komplett gebannt","color":"yellow"}]
execute as @a[scores={punishment=1..},tag=!verwarnt] run tag @s add verwarnt
execute as @a[scores={punishment=0},tag=verwarnt] run tag @s remove verwarnt
execute as @a[scores={punishment=1..},tag=verwarnt] run function svplus:punish_effects
execute as @a[tag=verwarnt] at @s run title @s actionbar ["",{"text":"Zeit bist du wieder freigegeben bist : ","color":"red"},{"text":"[","color":"gold","bold":false},{"score":{"name":"@s","objective":"punishment"},"color":"dark_red","bold":false},{"text":"]","color":"gold","bold":false}]
