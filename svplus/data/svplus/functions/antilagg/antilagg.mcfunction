#Test Für Antilagg Funktionen
#scoreboard players add Laggy antilagg_timer 1
execute store result score Items: antilagg run execute if entity @e[type=item]
execute store result score Mobs: antilagg run execute if entity @e[type=!item,type=!player,type=!armor_stand]
execute store result score Spieler_Online: antilagg run execute if entity @e[type=player]
execute store result score Spieler_Insgesamt: antilagg run scoreboard players get Max_Player uuid
execute if score Items: antilagg matches 2000.. run kill @e[type=item]
