#DrBlackError
#more stamina for players with particular chestplates
execute as @a[nbt={Inventory:[{Slot: 102b, id: "minecraft:leather_chestplate", Count: 1b, tag: {Unbreakable: 1b, Damage: 1}}]}] run tag @s add staminaplus
execute as @a[nbt=!{Inventory:[{Slot: 102b, id: "minecraft:leather_chestplate", Count: 1b, tag: {Unbreakable: 1b, Damage: 1}}]}] run tag @s remove staminaplus

#DrBlackError
#more stamina for players with particular chestplates
execute as @a[nbt={Inventory:[{Slot: 102b, id: "minecraft:leather_chestplate", Count: 1b, tag: {Unbreakable: 1b, Damage: 1}}]}] run tag @s add manaplus
execute as @a[nbt=!{Inventory:[{Slot: 102b, id: "minecraft:leather_chestplate", Count: 1b, tag: {Unbreakable: 1b, Damage: 1}}]}] run tag @s remove manaplus
