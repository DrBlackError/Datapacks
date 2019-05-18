#DrBlackRat
#sorgt dafür das nur ein spieler schlafen muss
#svplus/main svplus/load

#?
#?
scoreboard players add @a[nbt={Sleeping:1b}] sleeping 1

#?
#?
execute if entity @a[scores={sleeping=120..}] run time set 0
execute if entity @a[scores={sleeping=120..}] run weather clear
execute if entity @a[scores={sleeping=120..}] run tellraw @a {"text":"Guten Morgen, Ihr Arbeitstiere","color":"yellow"}

#?
#?
scoreboard players set @a[nbt={Sleeping:0b}] sleeping 0

#Flololilan
#Bed Ersatz
#execute as @a[nbt={Sleeping:1b},limit=1] if score counter timescore matches 13000..24000 run time add 100
#execute as @a[nbt={Sleeping:1b},limit=1] if score counter timescore matches 13000..24000 run weather clear
