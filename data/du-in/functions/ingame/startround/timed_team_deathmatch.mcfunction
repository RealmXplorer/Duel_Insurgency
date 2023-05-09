tag @a add dmIngame

#tag @a[tag=!working,tag=!musicOff] add song
team join Deathmatch @a[tag=!spectating]

#execute if entity @a[tag=!teamMode] run execute store result score #main playerCount run team list Deathmatch
scoreboard players set Red teamDeaths 0
scoreboard players set Blue teamDeaths 0

execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true


advancement grant @a[tag=playing] only du-in:gamemode/deathmatch
scoreboard objectives setdisplay sidebar teamDeaths
tag @a remove dml