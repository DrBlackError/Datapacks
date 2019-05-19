execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book"}},nbt=!{Item:{tag:{sort:enchbooks}}}] run data merge entity @s {Item:{tag:{sort:enchbooks}}}
