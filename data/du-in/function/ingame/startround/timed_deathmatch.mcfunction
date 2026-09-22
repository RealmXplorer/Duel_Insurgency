tag @a add dmIngame

team join Deathmatch @a[tag=!spectating]

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/deathmatch 4s

#Set Deathmatch Mode
scoreboard players set #DM gamemode 2

scoreboard players set @a[tag=!spectating] dmDeath 0
execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true

function du-in:ingame/deathmatch/timed/set_timers with storage du-in:gamemode timer

scoreboard objectives setdisplay sidebar dmDeath
tag @a remove dml