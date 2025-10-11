tag @a add cIngame

scoreboard objectives modify classicTeamKills displayname [{text:"Classic Kills ",bold:true,color:gold}]

scoreboard objectives setdisplay sidebar classicTeamKills

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/classic 4s

bossbar set bossbar:gametimer players @a
team join Classic @a[tag=!spectating,tag=!teamMode,tag=!AFK]
scoreboard players set @a[tag=!spectating] killIngame 0
execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true

tag @a remove cl
