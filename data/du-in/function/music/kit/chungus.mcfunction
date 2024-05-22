#CHUNGUS MUSIC#
scoreboard players set @s[tag=song,scores={music=2100..},tag=bigChungus,tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd,tag=bigChungus,tag=!musicOff,tag=!startgame] run playsound minecraft:big.chungus record @s ~ ~ ~ 10000000000000000000000000 1 1


scoreboard players set @s[tag=songEnd,scores={music=2200..},tag=bigChungus] music 0
execute if entity @s[tag=songEnd,scores={music=1},tag=bigChungus,tag=!musicOff,tag=!startgame] run playsound minecraft:big.chungus.end record @s ~ ~ ~ 10000000 1 1

execute if entity @s[tag=!song,tag=!songEnd,tag=bigChungus] run function du-in:music/kit/stop/kit