#DrBlackError
#Jeder Befehl, der hier eingetragen wird, wird in jedem (Game-)tick wiederholt ausgeführt

#?
#?
execute as @e[limit=1,type=item,nbt={Item:{id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl:4s, id: "minecraft:unbreaking"}]}}}] at @s if entity @e[type=item,distance=..2] run function entplus:link

#?
#?
#kill @e[type=minecraft:phantom]
kill @e[type=tnt]

#?
#?
function entplus:unbreaking4
function entplus:unbreaking5

#?
#?
function entplus:enchupgrade

#?
#?
execute as @e[nbt={Item:{tag:{Unbreaking:4}}}] at @s run function entplus:link

#?
#?
#gamemode spectator @a[tag=!wl]
#gamemode survival @a[tag=wl,tag=!op,gamemode=spectator]

#?
#?
execute store result score counter timescore run time query daytime

#?
#?
#function entplus:timetag

#?
#?
function entplus:safezone

#?
#?
function entplus:mana

#DrBlackError +DrBlackRat
#Loop exact
function entplus:tp_stab_homeset

#?
#?
#function entplus:exact moved to Basicplus

#?
#?
function entplus:wand1c
function entplus:wand1loop

#DrBlackError
#Mana Potions [Dedektierung vom Effekt Unluck und hinzufügen von Manapunkten]
execute as @a[nbt={ActiveEffects:[{Id:27b,Amplifier:1b}]}] at @s run scoreboard players add @s mana 3
execute as @a[nbt={ActiveEffects:[{Id:27b,Amplifier:2b}]}] at @s run scoreboard players add @s mana 5
execute as @a[nbt={ActiveEffects:[{Id:27b,Amplifier:3b}]}] at @s run scoreboard players add @s mana 8
execute as @a[nbt={ActiveEffects:[{Id:27b,Amplifier:4b}]}] at @s run scoreboard players set @s mana 1000

#?
#?
execute as @a[tag=bot_building_walk] at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ stone

#DrBlackRat
#main funktion der shoot funktion
function entplus:shoot/shootmain

#DrBlackError + DrBlackRat
#loop rotatae
function entplus:rotate

#DrBlackRat
#crafting funktionen
function entplus:z-c-w1-craft
function entplus:z-c-o-craft
#function entplus:z-c-s1-craft
#function entplus:z-c-s2-craft
#function entplus:z-c-s3-craft

#DrBlackRat
#tauscht bücher
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{Kapitel:1}}}] at @s run replaceitem entity @s weapon minecraft:written_book{display:{Name:"{\"text\":\"Kapitel I: Die Magie & Du\",\"color\":\"dark_purple\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"},title:"",author:"DrBlackError",generation:0,pages:["{\"text\":\"Kapitel I\\n\\nAls du zufälligerweise eine Enderperle letzte Nacht in der Tasche hattest, ist dir aufgefallen, dass du dich sicher fühlst. Die Enderperle scheint wohl das Bett zu mögen, da jetzt kein schwarzer Punkt in der Mitte war sondern das Bett in dem du\\n\",\"color\":\"black\"}","{\"text\":\"letzte Nacht geschlafen hast.\\n\",\"color\":\"black\",\"extra\":[{\"text\":\"Du wusstest, dass das nur Magie sein kann und hast dich am nächsten Morgen an deinen Zaubertisch gestellt und am 3. Meter einen Kessel aufgestellt. Dazwischen zweierlei Tische mit Halterungen für kleinere Experimente.\",\"color\":\"black\"}]}","{\"text\":\"Also nahmst du besagte Enderperle und hast es neben den Zaubertisch gelegt und eine Faser vom Bett neben den Kessel. Nun hast du 2 Stücke Gold genommen, die du beim letzten Pferderennen gewonnen hast und einen Ast vom Baum, der in deinem Vorgarten steht. \",\"color\":\"black\"}","{\"text\":\"Diese zwei Ingridien hast du in den brodelnden mit Wasser gefüllten Kessel geworfen, doch nichts geschah. Also hast du alles mit Papyrus und Feder schriftlich festgehalten. Es wurde spät und du wurdest mit zunehmender Stunde immer schläfriger.\",\"color\":\"black\"}","{\"text\":\"Du bist grad kurz weggenickt, und währenddessen ist deine Schreibfeder in den Kessel gefallen und du wurdest mit einem Knall aus deinem Schlaf gerissen. Was war da auf dem Tisch? Ein Zauberstab! Dieser war aus dem Holz vom Baum in deinem Vorgarten und an dem\\n\",\"color\":\"black\"}","{\"text\":\"einen Ende war das Enderauge wie festgewachsen.\\n\",\"color\":\"black\",\"extra\":[{\"text\":\"Das magische Wort lautet Zufall. Dieser Stab hat eine Macht, die du noch nicht erforschen konntest, aber er wird mit Sicherheit was mit dem Bett, dem Endertauge und deinem Sicherheitsgefühl zutun haben.\",\"color\":\"black\"}]}","{\"text\":\"Zunächst hast du diesen Vorfall deinen Freunden verschwiegen, um nicht als Betrüger dazustehen, doch dann hast du mit deinem besten Freund darüber geredet und er war der Meinung dich zu motivieren und den Stab zu erforschen.\",\"color\":\"black\"}","{\"text\":\"Noch am gleichen Abend bist du mit dem Zauberstab in den Wald gegangen und hast der Natur gelauscht. Es wurde spät und du wolltest nach Hause, doch du warst so tief im Wald, dass du deine Orientierung verloren hast.\",\"color\":\"black\"}","{\"text\":\"Du bekamst es mit der Angst da es inzwischen dunkel geworden ist und du keine 3 Fuß sehen konntest. Also hast du deinen Zauberstab aus der Tasche genommen und ihn angefleht: \",\"color\":\"black\"}","{\"text\":\"Ich will nach Hause\\n\\n\",\"color\":\"dark_purple\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger w1-\"},\"extra\":[{\"text\":\"Lass mich nicht sterben\\n\\n\",\"color\":\"dark_purple\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger w1-\"}},{\"text\":\"Ich überlasse alles dem Zufall\\n\\n\",\"color\":\"dark_purple\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger w1+\"}},{\"text\":\"42 ist die Antwort auf alles\\n\\n\",\"color\":\"dark_purple\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger w1-\"}},{\"text\":\"Gold regiert die Welt!\",\"color\":\"dark_purple\",\"bold\":false,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger w1-\"}}]}"]}

#?
#?
scoreboard players enable @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{Kapitel:1}}}] w1+
scoreboard players enable @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{Kapitel:1}}}] w1w-

#?
#?
execute as @a[scores={w1+=1}] run function entplus:w1p
execute as @a[scores={w1-=1}] run function entplus:w1m

#?
#?
scoreboard players enable @a w1+
scoreboard players enable @a w1-

#DrBlackRat
#tauscht stäbe
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:10,Unbreakable:1b}}}] at @s run replaceitem entity @s weapon minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Blut\",\"color\":\"red\"}"},Unbreakable:1b,Damage:10} 1

#club trigger
#scoreboard players enable @a Club
#execute as @a[scores={Club=1..}] at @s in overworld run tp @s -154 69 494
#scoreboard players set @a[scores={Club=..1}] Club 0

#IFloooI
#Save Cloud wand
execute as @e[type=shulker,tag=saveplatform] run scoreboard players add @s savecloud 1
execute as @e[type=shulker,tag=saveplatform,scores={savecloud=200}] run kill @s
