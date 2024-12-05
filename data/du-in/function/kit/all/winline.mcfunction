stopsound @a voice

##DATAPACK 6.0
#Set current player to this player
#execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
#execute at @s run function du-in:kit/all/winline/find_kit with storage du-in:main player

##DATAPACK 5.0
execute unless entity @s[scores={kit=10}] unless entity @s[scores={kit=1000..}] run function du-in:ingame/endround/win_music

#Win music
execute if entity @s[scores={kit=10}] run playsound minecraft:gaster.pick record @a[tag=!musicOff,tag=!lobby] ~ ~ ~ 100 1

#Win Voicelines
execute if entity @s[scores={kit=5}] run playsound minecraft:springtrap.line voice @a[tag=!lobby] ~ ~ ~ 100 1

#Legendaries
execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/sounds/win
execute if entity @s[scores={kit=1002}] run playsound minecraft:jerma.win voice @a[tag=!lobby] ~ ~ ~ 100 1
execute if entity @s[scores={kit=1003}] run playsound minecraft:sus.victory record @a[tag=!musicOff,tag=!lobby] ~ ~ ~ 100 1
execute if entity @s[scores={kit=2015}] run playsound minecraft:saul.win record @a[tag=!musicOff,tag=!lobby] ~ ~ ~ 100 1


#SAAC WIN LINES
execute if score #main online matches 3.. if entity @s[scores={kit=1000}] run playsound minecraft:saac.line.win voice @a[tag=!lobby] ~ ~ ~ 100 1

execute unless score #main online matches 3.. if entity @s[scores={kit=1000}] unless entity @a[scores={kit=1001..1004}] run playsound minecraft:saac.line.win voice @a[tag=!lobby] ~ ~ ~ 100 1
execute unless score #main online matches 3.. if entity @s[scores={kit=1000}] if entity @a[scores={kit=1003}] run playsound minecraft:saac.sus voice @a[tag=!lobby] ~ ~ ~ 100 1
execute unless score #main online matches 3.. if entity @s[scores={kit=1000}] if entity @a[scores={kit=1004}] run playsound minecraft:saac.runza voice @a[tag=!lobby] ~ ~ ~ 100 1
