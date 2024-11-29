tag @a add dmIngame


team join Deathmatch @a[tag=!spectating]

scoreboard players set Red teamDeaths 0
scoreboard players set Blue teamDeaths 0

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/deathmatch 4s

execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true


scoreboard objectives setdisplay sidebar teamDeaths
tag @a remove dml