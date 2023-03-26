tag @a add void
kill @e[tag=mapSpecific]
tag @a remove cIngame
tag @a remove dmIngame
tag @a remove kothIngame
tag @a remove ctfIngame
tag @a remove cqIngame

tag @a remove saul
tag @a remove saac
tag @a remove bigChungus

stopsound @a ambient
stopsound @a record
scoreboard players set @a music 0

tp @a 113 5 -91 135 0
spawnpoint @a 113 5 -91 135
setblock 97 20 -107 minecraft:black_stained_glass
time set night

execute unless score #main matchDeaths matches 1.. run scoreboard players set Insurgents matchDeaths 0
#execute store result score Insurgents matchDeaths run scoreboard players get #main matchDeaths

scoreboard objectives setdisplay sidebar matchDeaths

scoreboard players set @a team 1
team join Insurgent @a

bossbar set gast:pylon players @a
bossbar set gast:pylon visible true