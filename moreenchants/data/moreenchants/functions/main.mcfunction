#IFloooI

#Leder
function moreenchants:leather/helmet
function moreenchants:leather/chestplate
function moreenchants:leather/leggings
function moreenchants:leather/boots

#Gold
function moreenchants:gold/helmet
function moreenchants:gold/chestplate
function moreenchants:gold/leggings
function moreenchants:gold/boots
#Iron
function moreenchants:iron/helmet
function moreenchants:iron/chestplate
function moreenchants:iron/leggings
function moreenchants:iron/boots
#Diamond
function moreenchants:diamond/helmet
function moreenchants:diamond/chestplate
function moreenchants:diamond/leggings
function moreenchants:diamond/boots
#Swords
function moreenchants:weapons/wooden_sword
function moreenchants:weapons/stone_sword
function moreenchants:weapons/golden_sword
function moreenchants:weapons/iron_sword
function moreenchants:weapons/diamond_sword
#Delete After World Change!
function moreenchants:island

#Commands to get All Books ingame for Enchantments and Some NICE Heads!
execute as @a[tag=books] run give @s minecraft:enchanted_book{CustomModelData:6,ench:["glowattack"],display:{Name:"{\"text\":\"Buch der Leuchtenden Berührung\",\"color\":\"gold\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @s minecraft:enchanted_book{CustomModelData:5,ench:["poisonattack"],display:{Name:"{\"text\":\"Buch der Vergiftenden Berührung\",\"color\":\"green\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @s minecraft:enchanted_book{CustomModelData:2,ench:["slowfall"],display:{Name:"{\"text\":\"Buch des Langsamen Falls\",\"color\":\"aqua\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @s minecraft:enchanted_book{CustomModelData:1,ench:["fireres"],display:{Name:"{\"text\":\"Buch der Feuerresistenz\",\"color\":\"dark_red\"}"},HideFlags:63} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (red)\"}"},SkullOwner:{Id:"81da9dfa-5ff8-4c8e-a41d-d2a82bf6e9f3",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTNhNjljM2NhYTMxMzA0ZTk5NTIzMjhjNzJjZWUwYjU3YjJhMmJkNDZjZTljNWNiODhjMDdkMTI2NjI3N2Q2YSJ9fX0="}]}}} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (magenta)\"}"},SkullOwner:{Id:"be85640f-aaf1-4e15-b0a2-718e299c90a1",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzJlYTg1Yzg1ZmUwNDg0YWY2YzgxNWVmYjY1NWQyYjIxZTEwOTg2M2M5NjMzM2I5MjgwYjU5YjgwZDZhYzk4ZiJ9fX0="}]}}} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (purple)\"}"},SkullOwner:{Id:"ac076147-811b-4ccb-8779-973a16aac6cd",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWM5MmU1MTExZWE3ZDdlYjNmMDU1ODMzZTFmMzVkNjUxYzBkYTU1NjQzYzkzODNlMGJjZTZjMjM2OTZkNThiOSJ9fX0="}]}}} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (blue)\"}"},SkullOwner:{Id:"15d53408-2362-4212-96b4-d049c788d21f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2NmNDM0MTYwMDlkMWE4MTMwYWE4NzA4Y2E3NGVlNmVlYWU3NzVhNzY5ZTdkMDI5M2U1NjhhZjY2Njk0OTY2OSJ9fX0="}]}}} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (light blue)\"}"},SkullOwner:{Id:"bea9ae4a-9e16-4ed1-b8ac-bec02556b473",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGJlMmJhZjQwZmQ4NWViNTczZmU1YjJlNWI2Yzg4MTdjZjUwZjg4M2Q5NTc2OTQxNTgwN2FiMDcyODhhNDdjZCJ9fX0="}]}}} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (green)\"}"},SkullOwner:{Id:"cab463bf-60a6-41e9-b801-715151dcefd4",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMwMzBjYzM1ZmRlMDIxOGRlZDViYTVkNTU3Y2NhOWUwM2RjYmM4NGY5ZTY3MjkxMWRhNTRmZTA3YzVmZGJiYiJ9fX0="}]}}} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (yellow)\"}"},SkullOwner:{Id:"8676f144-122c-46bd-b085-c89f153fdeb4",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUzZmExYjU3ZTRmNzg0ZDE2ZTVhMmRhYTJmNzQ2YjJlY2ZlNjI0Y2NkNzRhNGQ0YWNjNmEyZTZhMDgzZjU0ZSJ9fX0="}]}}} 1
execute as @a[tag=books] run give @s minecraft:player_head{display:{Name:"{\"text\":\"Enchanted Book (orange)\"}"},SkullOwner:{Id:"8d7ed09a-efac-4305-9ccf-af9f4e544b1e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzY1MDViMWJlZmJhMjQyMTcwYTQ2ZTg5NDdiNTJhZWE1NGE1OTA2MGYzZTFjMzZmMjFjZWJiNDQ2OTBmOGIwYyJ9fX0="}]}}} 1

execute as @a[tag=books] run tag @s remove books
function moreenchants:enchantments
