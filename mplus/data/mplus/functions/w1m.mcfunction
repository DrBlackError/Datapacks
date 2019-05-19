clear @s minecraft:written_book
tellraw @s {"text":"Versuch es nochmal und lies das Buch!","color":"dark_purple","bold":false,"underlined":true,"hoverEvent":{"action":"show_text","value":"Du musst das Buch nochmal herstellen!"}}
scoreboard players add @s w1- 1
