tag @a add void

advancement revoke @s only du-in:void/interact_void
kill @e[tag=mapSpecific]
tag @a remove voidReady
scoreboard players set #main voidReadyOnline 0

tag @a[tag=kothIngame] add kothMap

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
scoreboard players set @a heartBeat 0

execute if score #main pylonsDestroyed matches ..0 run summon marker 10029 41 10030 {Tags:["pylon","mapSpecific"]}
execute if score #main pylonsDestroyed matches 1 run summon marker 10062 41 10030 {Tags:["pylon","mapSpecific"]}
execute if score #main pylonsDestroyed matches 2 run summon marker 10062 41 10063 {Tags:["pylon","mapSpecific"]}
execute if score #main pylonsDestroyed matches 3 run summon marker 10029 41 10063 {Tags:["pylon","mapSpecific"]}

execute if score #main pylonsDestroyed matches ..0 run function du-in:ingame/void/pylon_reset
execute if score #main pylonsDestroyed matches 1 run setblock 10029 33 10030 air replace
execute if score #main pylonsDestroyed matches 2 run setblock 10062 33 10030 air replace
execute if score #main pylonsDestroyed matches 3 run setblock 10062 33 10063 air replace

#Pylon 1
#10029 41 10030

#/setblock 10029 33 10030 beacon replace

#Player Pylon 1
#summon marker 10034 42 10035 {Tags:["gonerSpawn","mapSpecific"]}
#10034 42 10035


#Bridge 1-2
summon marker 10045.0 42 10030.5 {Tags:["gonerSpawn","mapSpecific"]}

#10045.0 42 10030.5


#Pylon 2
#10062 41 10030
#/setblock 10062 33 10030 beacon replace

#Player pylon 2
#summon marker 10057 42 10035 {Tags:["gonerSpawn","mapSpecific"]}

#10057 42 10035


#Bridge 2-3
summon marker 10062.5 42 10046.0 {Tags:["gonerSpawn","mapSpecific"]}
#10062.5 42 10046.0


#Pylon 3
#10062 41 10063

#/setblock 10062 33 10063 beacon replace

#Player pylon 3
#summon marker 10057 42 10058 {Tags:["gonerSpawn","mapSpecific"]}
#10057 42 10058


#Bridge 3-4
summon marker 10046.0 42 10063.5 {Tags:["gonerSpawn","mapSpecific"]}
#10046.0 42 10063.5


#Pylon 4
#10029 41 10063

#/setblock 10029 33 10063 beacon replace

#Player pylon 4
#summon marker 10034 42 10058 {Tags:["gonerSpawn","mapSpecific"]}
#10034 42 10058


#Bridge 4-1
summon marker 10029.5 42 10046.0 {Tags:["gonerSpawn","mapSpecific"]}
#10029.5 42 10046.0 


#Center
#10045.0 42 10047.0

tp @a 10045.0 42 10047.0
#tp @a 113 5 -91 135 0

spawnpoint @a 10045 42 10047
#spawnpoint @a 113 5 -91 135

scoreboard players set #main missileCooldown 40

setblock 97 20 -107 minecraft:black_stained_glass
time set night

execute at @a run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.75
execute at @a run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.75
execute at @a run playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 1 1.5
execute at @a run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 .5
execute at @a run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1
execute at @a run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1.5
execute at @a run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 2

#execute if score #main pylonsDestroyed matches ..2 run scoreboard players set @a gonersKilled 30
#execute if score #main pylonsDestroyed matches 3 run scoreboard players set @a gonersKilled 30

scoreboard players set @a gonersKilled 30

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