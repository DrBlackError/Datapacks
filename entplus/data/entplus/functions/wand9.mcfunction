summon shulker ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~1 ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~-1 ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~ ~-1 ~1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~ ~-1 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~1 ~-1 ~1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~1 ~-1 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~-1 ~-1 ~1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}
summon shulker ~-1 ~-1 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"entplus:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["saveplatform"]}

effect give @s minecraft:slow_falling 1 155 true

execute as @a[scores={exact=1, mana=10..},tag=w9] at @s run scoreboard players remove @s mana 10
