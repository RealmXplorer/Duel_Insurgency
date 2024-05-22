scoreboard players set @s[scores={music=2580..},tag=!oldPack] music 0
execute if entity @s[scores={music=1},tag=!oldPack] run playsound minecraft:music.parkour record @s ~ ~ ~ 1000000 1 1

#BETA#
execute if entity @s[tag=oldPack] run function du-in:music/lobby/oldpack/parkour