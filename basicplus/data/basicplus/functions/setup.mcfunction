#DrBlackError
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt

#DrBlackError
#Nachricht die beim erfolgreichen Reload gesendet wird
tellraw @a[team=Admin] {"text":"Basicplus erfolgreich geladen!","color":"yellow"}
execute as @a[team=Admin] at @s run playsound minecraft:entity.arrow.hit_player ambient @a

#DrBlackError
#Added nessesary scoreboards

#DrBlackError
#life = health
scoreboard objectives add life

#DrBlackError
#leave = times left Server/Game
scoreboard objectives add leave minecraft.custom:minecraft.leave_game

#DrBlackError
#timer = dummy
scoreboard objectives add timer dummy

#DrBlackError
#sleeping = dummy
scoreboard objectives add sleeping dummy

#DrBlackError
#exact = rclick with Carrot on a Stick
scoreboard objectives add exact minecraft.used:minecraft.carrot_on_a_stick

#DrBlackRat
#barrel_placed = times placed barrels // Customcrafting
scoreboard objectives add barrel_placed minecraft.used:minecraft.barrel

#DrBlackError
#Set scorboard displays
scoreboard objectives setdisplay belowName life
#scoreboard objectives setdisplay list xyz
#scoreboard objectives setdisplay sidebar xyz

#IFloooI
#Setting Gamemodes faster
scoreboard objectives add 1 trigger
scoreboard objectives add 2 trigger
scoreboard objectives add 3 trigger

#Afk System
scoreboard objectives add afk_timer dummy
scoreboard objectives add afk_timer dummy
scoreboard objectives add rotation_check dummy
scoreboard objectives add rotation dummy
scoreboard objectives add rotation_timer dummy
