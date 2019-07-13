#DrBlackError
#Cloud-Staff

#Summon shulker
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~1 ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~-1 ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~ ~-1 ~1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~ ~-1 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~1 ~-1 ~1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~1 ~-1 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~-1 ~-1 ~1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run summon shulker ~-1 ~-1 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"mplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}

#Error and debug
execute as @a[scores={exact=1}, tag=!w9] at @s run tellraw @s ["",{"text":"Error: Tag 'w9' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add w9"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add w9 [klicke um auszuführen]"}]}}}]
execute as @a[scores={exact=1}, tag=!z1,tag=w9] at @s run tellraw @s ["",{"text":"Error: Tag 'z1' nicht gefunden","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add z1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Debug: /tag @s add z1 [klicke um auszuführen]"}]}}}]

#Effect
execute as @s[scores={mana=2..}, tag=w9, tag=z1] run effect give @s minecraft:slow_falling 1 155 true

#Remove mana
execute as @a[scores={exact=1, mana=2..},tag=w9,tag=z1] at @s run scoreboard players remove @s mana 2
execute as @a[scores={exact=1, mana=..1},tag=w9,tag=z1] at @s run tellraw @s ["",{"text":"Du hast nicht genug Mana! ","color":"aqua"},{"text":"Benötigt: ","color":"blue"},{"text":"2","color":"green","bold":true}]
