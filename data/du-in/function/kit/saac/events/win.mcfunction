#Default Win music
function du-in:music/ingame/win

#Saac Win Lines
execute if score #main online matches 3.. run playsound minecraft:saac.line.win voice @a[tag=!lobby] ~ ~ ~ 100 1

execute unless score #main online matches 3.. unless entity @a[scores={kit=1001..1004}] run playsound minecraft:saac.line.win voice @a[tag=!lobby] ~ ~ ~ 100 1
execute unless score #main online matches 3.. if entity @a[scores={kit=1003}] run playsound minecraft:saac.sus voice @a[tag=!lobby] ~ ~ ~ 100 1
execute unless score #main online matches 3.. if entity @a[scores={kit=1004}] run playsound minecraft:saac.runza voice @a[tag=!lobby] ~ ~ ~ 100 1
