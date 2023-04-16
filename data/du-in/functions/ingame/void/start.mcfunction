tag @a add void

advancement revoke @s only du-in:void/interact_void
kill @e[tag=mapSpecific]
tag @a remove voidReady
scoreboard players set #main voidReadyOnline 0
tag @a remove cIngame
tag @a remove dmIngame
tag @a remove kothIngame
tag @a remove ctfIngame
tag @a remove cqIngame
tag @a remove team1
tag @a remove team2
tag @a remove flagGot


tag @a remove saul
tag @a remove saac
tag @a remove bigChungus

stopsound @a ambient
stopsound @a record
scoreboard players set @a music 0
scoreboard players set @a ambience 0

tp @a 113 5 -91 135 0
spawnpoint @a 113 5 -91 135
setblock 97 20 -107 minecraft:black_stained_glass
time set night

execute positioned 113 5 -91 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.75
execute positioned 113 5 -91 run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.75
execute positioned 113 5 -91 run playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 1 1.5
execute positioned 113 5 -91 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 .5
execute positioned 113 5 -91 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1
execute positioned 113 5 -91 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1.5
execute positioned 113 5 -91 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 2

execute if score #main pylonsDestroyed matches ..2 run scoreboard players set @a gonersKilled 30
execute if score #main pylonsDestroyed matches 3 run scoreboard players set @a gonersKilled 30

advancement grant @a[gamemode=!spectator] only du-in:void/void

execute unless score #main matchDeaths matches 1.. run scoreboard players set Insurgents matchDeaths 0
#execute store result score Insurgents matchDeaths run scoreboard players get #main matchDeaths

execute if score #main pylonsDestroyed matches ..2 run scoreboard objectives modify matchDeaths displayname ["",{"text":"Match Deaths ","bold":true,"color":"red"},{"text":"(Max 2)","color":"gray"}]
execute if score #main pylonsDestroyed matches 3 run scoreboard objectives modify matchDeaths displayname ["",{"text":"Match Deaths ","bold":true,"color":"red"},{"text":"(Max 3)","color":"gray"}]

execute if score #main pylonsDestroyed matches ..0 run tellraw @a [{"text":"The First Pylon ","bold":true,"color":"dark_purple"},{"text":"beckons...","color":"light_purple"}]
execute if score #main pylonsDestroyed matches 1 run tellraw @a [{"text":"The Second Pylon ","bold":true,"color":"dark_purple"},{"text":"glows intensely...","color":"light_purple"}]
execute if score #main pylonsDestroyed matches 2 run tellraw @a [{"text":"The Third Pylon ","bold":true,"color":"dark_purple"},{"text":"hums ominously...","color":"light_purple"}]
execute if score #main pylonsDestroyed matches 3 run tellraw @a [{"text":"It's the end...","bold":true,"color":"dark_purple"}]

scoreboard objectives setdisplay sidebar matchDeaths

scoreboard players set #main wave 1

title @a title " "
title @a subtitle [{"text":"Wave ","color":"light_purple","bold":true},{"score":{"name":"#main","objective":"wave"},"color":"dark_purple","bold":true},{"text":"/2","color":"dark_purple","bold":true}]

bossbar set gast:pylon name [{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@r","objective":"gonersKilled"},"color":"red"},{"text":" Goners left","color":"gray"}]
execute store result bossbar gast:pylon max run scoreboard players get @r gonersKilled

scoreboard players set @a team 1
team join Insurgent @a

bossbar set bossbar:gametimer visible false
bossbar set du-in:redctf visible false
bossbar set du-in:bluectf visible false
bossbar set conquest:red visible false
bossbar set conquest:blue visible false
bossbar set minecraft:bluekoth visible false
bossbar set minecraft:redkoth visible false
bossbar set minecraft:classicblue visible false
bossbar set minecraft:classicred visible false

bossbar set gast:pylon players @a
bossbar set gast:pylon visible true