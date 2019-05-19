#LittleRetard
#Testet ob ein Block im Umkreis des Spielers ist
#-
#
#

execute as @a[tag=neartorch,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove neartorch
execute as @a at @s if block ~ ~ ~ minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~1 ~ ~ minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~ ~ ~1 minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~-1 ~ ~ minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~ ~ ~-1 minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~1 ~ ~-1 minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~-1 ~ ~1 minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~-1 ~ ~-1 minecraft:torch run tag @s add neartorch
execute as @a at @s if block ~1 ~ ~1 minecraft:torch run tag @s add neartorch

#execute as @a[tag=neartorch] at @s run title @s title "torch"

execute as @a[tag=nearcampfire,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearcampfire
execute as @a at @s if block ~ ~ ~ minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~1 ~ ~ minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~ ~ ~1 minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~-1 ~ ~ minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~ ~ ~-1 minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~1 ~ ~-1 minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~-1 ~ ~1 minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~-1 ~ ~-1 minecraft:campfire run tag @s add nearcampfire
execute as @a at @s if block ~1 ~ ~1 minecraft:campfire run tag @s add nearcampfire

#execute as @a[tag=nearcampfire] at @s run title @s title "campfire"

execute as @a[tag=nearsmoker,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearsmoker
execute as @a at @s if block ~ ~ ~ minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~1 ~ ~ minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~ ~ ~1 minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~-1 ~ ~ minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~ ~ ~-1 minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~1 ~ ~-1 minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~-1 ~ ~1 minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~-1 ~ ~-1 minecraft:smoker run tag @s add nearsmoker
execute as @a at @s if block ~1 ~ ~1 minecraft:smoker run tag @s add nearsmoker

#execute as @a[tag=nearsmoker] at @s run title @s title "smoker"

execute as @a[tag=nearblast_furnace,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearblast_furnace
execute as @a at @s if block ~ ~ ~ minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~1 ~ ~ minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~ ~ ~1 minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~-1 ~ ~ minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~ ~ ~-1 minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~1 ~ ~-1 minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~-1 ~ ~1 minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~-1 ~ ~-1 minecraft:blast_furnace run tag @s add nearblast_furnace
execute as @a at @s if block ~1 ~ ~1 minecraft:blast_furnace run tag @s add nearblast_furnace

#execute as @a[tag=nearblast_furnace] at @s run title @s title "blast_furnace"

execute as @a[tag=nearfurnace,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearfurnace
execute as @a at @s if block ~ ~ ~ minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~1 ~ ~ minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~ ~ ~1 minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~-1 ~ ~ minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~ ~ ~-1 minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~1 ~ ~-1 minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~-1 ~ ~1 minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~-1 ~ ~-1 minecraft:furnace run tag @s add nearfurnace
execute as @a at @s if block ~1 ~ ~1 minecraft:furnace run tag @s add nearfurnace

#execute as @a[tag=nearfurnace] at @s run title @s title "furnace"

execute as @a[tag=nearlava,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearlava
execute as @a at @s if block ~ ~ ~ minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~1 ~ ~ minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~ ~ ~1 minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~-1 ~ ~ minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~ ~ ~-1 minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~1 ~ ~-1 minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~-1 ~ ~1 minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~-1 ~ ~-1 minecraft:lava run tag @s add nearlava
execute as @a at @s if block ~1 ~ ~1 minecraft:lava run tag @s add nearlava

#execute as @a[tag=nearlava] at @s run title @s title "lava"

execute as @a[tag=nearglowstone,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearglowstone
execute as @a at @s if block ~ ~ ~ minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~1 ~ ~ minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~ ~ ~1 minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~-1 ~ ~ minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~ ~ ~-1 minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~1 ~ ~-1 minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~-1 ~ ~1 minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~-1 ~ ~-1 minecraft:glowstone run tag @s add nearglowstone
execute as @a at @s if block ~1 ~ ~1 minecraft:glowstone run tag @s add nearglowstone

#execute as @a[tag=nearglowstone] at @s run title @s title "glowstone"

execute as @a[tag=nearjack_o_lantern,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearjack_o_lantern
execute as @a at @s if block ~ ~ ~ minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~1 ~ ~ minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~ ~ ~1 minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~-1 ~ ~ minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~ ~ ~-1 minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~1 ~ ~-1 minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~-1 ~ ~1 minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~-1 ~ ~-1 minecraft:jack_o_lantern run tag @s add nearjack_o_lantern
execute as @a at @s if block ~1 ~ ~1 minecraft:jack_o_lantern run tag @s add nearjack_o_lantern

#execute as @a[tag=nearjack_o_lantern] at @s run title @s title "jack_o_lantern"

execute as @a[tag=nearsea_lantern,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearsea_lantern
execute as @a at @s if block ~ ~ ~ minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~1 ~ ~ minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~ ~ ~1 minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~-1 ~ ~ minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~ ~ ~-1 minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~1 ~ ~-1 minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~-1 ~ ~1 minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~-1 ~ ~-1 minecraft:sea_lantern run tag @s add nearsea_lantern
execute as @a at @s if block ~1 ~ ~1 minecraft:sea_lantern run tag @s add nearsea_lantern

#execute as @a[tag=nearsea_lantern] at @s run title @s title "sea_lantern"

execute as @a[tag=nearmagma_block,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearmagma_block
execute as @a at @s if block ~ ~ ~ minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~1 ~ ~ minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~ ~ ~1 minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~-1 ~ ~ minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~ ~ ~-1 minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~1 ~ ~-1 minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~-1 ~ ~1 minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~-1 ~ ~-1 minecraft:magma_block run tag @s add nearmagma_block
execute as @a at @s if block ~1 ~ ~1 minecraft:magma_block run tag @s add nearmagma_block

#execute as @a[tag=nearmagma_block] at @s run title @s title "magma_block"

execute as @a[tag=nearfire,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearfire
execute as @a at @s if block ~ ~ ~ minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~1 ~ ~ minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~ ~ ~1 minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~-1 ~ ~ minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~ ~ ~-1 minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~1 ~ ~-1 minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~-1 ~ ~1 minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~-1 ~ ~-1 minecraft:fire run tag @s add nearfire
execute as @a at @s if block ~1 ~ ~1 minecraft:fire run tag @s add nearfire

#execute as @a[tag=nearfire] at @s run title @s title "fire"

#Vorlage
#execute as @a[tag=nearxyz,scores={timer=10,timer=20,timer=30,timer=40}] at @s run tag @s remove nearxyz
#execute as @a at @s if block ~ ~ ~ minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~1 ~ ~ minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~ ~ ~1 minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~-1 ~ ~ minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~ ~ ~-1 minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~1 ~ ~-1 minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~-1 ~ ~1 minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~-1 ~ ~-1 minecraft:xyz run tag @s add nearxyz
#execute as @a at @s if block ~1 ~ ~1 minecraft:xyz run tag @s add nearxyz

#execute as @a[tag=nearxyz] at @s run title @s title "xyz"
