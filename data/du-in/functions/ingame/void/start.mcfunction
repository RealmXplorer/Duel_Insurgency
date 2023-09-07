tag @a add void

effect give @a instant_health 1 100 true
advancement revoke @s only du-in:void/interact_void
execute at @e[type=armor_stand,tag=vendMachine] run setblock ~ ~1 ~ air
execute at @e[type=armor_stand,tag=vendMachine] run setblock ~ ~ ~ air
kill @e[tag=mapSpecific]
tag @a remove voidReady
scoreboard players set #main voidReadyOnline 0

schedule function du-in:ingame/void/goner/check 3s
schedule clear du-in:ingame/scheduled/ambience/init
schedule clear du-in:maps/jermall/stop
schedule clear du-in:maps/jermall/pick_victim
schedule clear du-in:maps/jermall/eat_victim

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
tag @a remove inField

schedule clear du-in:ingame/scheduled/ambience/init
stopsound @a ambient

function du-in:music/ingame/stop/all
stopsound @a
scoreboard players set @a music 0
#scoreboard players set @a ambience 0
scoreboard players set @a heartBeat 0

function du-in:ingame/void/whisper

scoreboard players set Insurgents playerCount 0
execute as @a[gamemode=!spectator] run scoreboard players add Insurgents playerCount 1
scoreboard players set @a[gamemode=!spectator] Lives 1

execute unless score #main pylonsDestroyed matches 2.. run function du-in:music/void/suffocation
#execute if score #main pylonsDestroyed matches 2 run function du-in:music/void/pursuit_happiness
#execute if score #main pylonsDestroyed matches 3 run function du-in:music/void/vain_pursuit

#execute if score #main pylonsDestroyed matches ..0 run summon marker 10029 41 10030 {Tags:["pylon","mapSpecific"]}
#execute if score #main pylonsDestroyed matches 1 run summon marker 10062 41 10030 {Tags:["pylon","mapSpecific"]}
#execute if score #main pylonsDestroyed matches 2 run summon marker 10062 41 10063 {Tags:["pylon","mapSpecific"]}
#execute if score #main pylonsDestroyed matches 3 run summon marker 10029 41 10063 {Tags:["pylon","mapSpecific"]}

execute if score #main pylonsDestroyed matches ..0 run function du-in:ingame/void/start/pylon_one
execute if score #main pylonsDestroyed matches 1 run function du-in:ingame/void/start/pylon_two
execute if score #main pylonsDestroyed matches 2 run function du-in:ingame/void/start/pylon_three
execute if score #main pylonsDestroyed matches 3 run function du-in:ingame/void/start/pylon_four

#execute if score #main pylonsDestroyed matches ..0 run function du-in:ingame/void/pylon_reset
#execute if score #main pylonsDestroyed matches 1 run setblock 10029 33 10030 air replace
#execute if score #main pylonsDestroyed matches 2 run setblock 10062 33 10030 air replace
#execute if score #main pylonsDestroyed matches 3 run setblock 10062 33 10063 air replace

#execute if score #main pylonsDestroyed matches 3 run schedule function du-in:ingame/void/spawn/missile 200t

#Pylon 1
#10029 41 10030

#/setblock 10029 33 10030 beacon replace

#Player Pylon 1
#summon marker 10034 42 10035 {Tags:["gonerSpawn","mapSpecific"]}
#10034 42 10035


#Bridge 1-2
summon marker 10045.0 42 10030.5 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10053 42 10030 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10038 42 10030 {Tags:["gonerSpawn","mapSpecific"]}

#10045.0 42 10030.5


#Pylon 2
#10062 41 10030
#/setblock 10062 33 10030 beacon replace

#Player pylon 2
#summon marker 10057 42 10035 {Tags:["gonerSpawn","mapSpecific"]}

#10057 42 10035


#Bridge 2-3
summon marker 10062.5 42 10046.0 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10062 42 10054 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10062 42 10039 {Tags:["gonerSpawn","mapSpecific"]}

#10062.5 42 10046.0


#Pylon 3
#10062 41 10063

#/setblock 10062 33 10063 beacon replace

#Player pylon 3
#summon marker 10057 42 10058 {Tags:["gonerSpawn","mapSpecific"]}
#10057 42 10058


#Bridge 3-4
summon marker 10046.0 42 10063.5 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10038 42 10063 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10053 42 10063 {Tags:["gonerSpawn","mapSpecific"]}

#10046.0 42 10063.5


#Pylon 4
#10029 41 10063

#/setblock 10029 33 10063 beacon replace

#Player pylon 4
#summon marker 10034 42 10058 {Tags:["gonerSpawn","mapSpecific"]}
#10034 42 10058


#Bridge 4-1
summon marker 10029.5 42 10046.0 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10029 42 10039 {Tags:["gonerSpawn","mapSpecific"]}
summon marker 10029 42 10054 {Tags:["gonerSpawn","mapSpecific"]}

#10029.5 42 10046.0 


 summon marker 10066 42 10067 {Tags:["gonerSpawn","mapSpecific"]}
 summon marker 10066 42 10026 {Tags:["gonerSpawn","mapSpecific"]}
 summon marker 10025 42 10026 {Tags:["gonerSpawn","mapSpecific"]}
 summon marker 10025 42 10067 {Tags:["gonerSpawn","mapSpecific"]}

 summon marker 10066 42 10058 {Tags:["gonerSpawn","mapSpecific"]}
 summon marker 10057 42 10067 {Tags:["gonerSpawn","mapSpecific"]}

 summon marker 10033 42 10068 {Tags:["gonerSpawn","mapSpecific"]}
 summon marker 10025 42 10058 {Tags:["gonerSpawn","mapSpecific"]}

 summon marker 10024 42 10034 {Tags:["gonerSpawn","mapSpecific"]}
 summon marker 10033 42 10025 {Tags:["gonerSpawn","mapSpecific"]}

 summon marker 10058 42 10025 {Tags:["gonerSpawn","mapSpecific"]}
 summon marker 10066 42 10035 {Tags:["gonerSpawn","mapSpecific"]}

#10033 42 10068

#10057 42 10067
#Center
#10045.0 42 10047.0

tp @a 10045.0 42 10047.0
#tp @a 113 5 -91 135 0

spawnpoint @a 10045 42 10047
#spawnpoint @a 113 5 -91 135

#Vending Machines
execute if entity @a[scores={kit=1000..1001}] run summon interaction 10057 42 10030 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 10029 42 10035 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 10034 42 10063 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 10062 42 10058 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 10057 42 10030 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 10029 42 10035 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 10034 42 10063 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 10062 42 10058 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}

#Vents
summon interaction 10067 41 10025 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 10024 41 10025 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 10024 41 10068 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 10067 41 10068 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

execute if entity @a[tag=sus] run summon marker 10066 42 10025 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 10024 42 10026 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 10024 42 10067 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 10067 42 10067 {Tags:["vent","mapSpecific"]}

#Time set
time set night

#Sounds
execute positioned 10046 42 10047 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.75
execute positioned 10046 42 10047 run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.75
execute positioned 10046 42 10047 run playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 1 1.5
execute positioned 10046 42 10047 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 .5
execute positioned 10046 42 10047 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1
execute positioned 10046 42 10047 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1.5
execute positioned 10046 42 10047 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 2

#execute if score #main pylonsDestroyed matches ..2 run scoreboard players set @a gonersKilled 30
#execute if score #main pylonsDestroyed matches 3 run scoreboard players set @a gonersKilled 30

#scoreboard players set @a gonersKilled 30

execute if score #main pylonsDestroyed matches 0 run scoreboard players set @a gonersKilled 10
execute if score #main pylonsDestroyed matches 1 run scoreboard players set @a gonersKilled 15
execute unless score #main pylonsDestroyed matches 0..1 run scoreboard players set @a gonersKilled 20
execute as @a[gamemode=!spectator] run scoreboard players add @a gonersKilled 10

advancement grant @a[gamemode=!spectator] only du-in:void/void

execute unless score #main matchDeaths matches 1.. run scoreboard players set Insurgents matchDeaths 0

#execute if score #main pylonsDestroyed matches ..2 run scoreboard objectives modify matchDeaths displayname ["",{"text":"Match Deaths ","bold":true,"color":"red"},{"text":"(Max 2)","color":"gray"}]
scoreboard objectives modify playerCount displayname ["",{"text":"Players left","bold":true,"color":"red"}]

scoreboard objectives setdisplay sidebar playerCount

scoreboard players set #main wave 1

title @a title " "
execute unless score #main pylonsDestroyed matches 0 unless score #main pylonsDestroyed matches 3 run title @a subtitle [{"text":"Wave ","color":"light_purple","bold":true},{"score":{"name":"#main","objective":"wave"},"color":"dark_purple","bold":true},{"text":"/2","color":"dark_purple","bold":true}]

bossbar set gast:pylon name [{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@a[gamemode=adventure,tag=void,limit=1]","objective":"gonersKilled"},"color":"red","bold":true},{"text":" Goners left","color":"gray","bold":true}]
execute store result bossbar gast:pylon max run scoreboard players get @a[gamemode=adventure,tag=void,limit=1] gonersKilled

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

execute unless score #main pylonsDestroyed matches 3 run bossbar set gast:pylon players @a
execute unless score #main pylonsDestroyed matches 3 run bossbar set gast:pylon visible true

execute if score #main pylonsDestroyed matches 3 run bossbar set gast:pylon4 players @a
execute if score #main pylonsDestroyed matches 3 run bossbar set gast:pylon4 visible true

bossbar set gast:pylon4 name [{"text":"Time to Pylon shutdown: ","bold":true,"color":"white"},{"text":"SURVIVE","bold":true,"color":"red"}]
execute store result bossbar gast:pylon4 max run scoreboard players get @a[gamemode=adventure,tag=void,limit=1] pylonTimer

schedule function du-in:ingame/void/spawn/vending 10t