#ENDTIME 140#
team join lobby @a
scoreboard players set #main lobby 1
scoreboard players set @a lobby 1
tag @a add lobby
schedule function du-in:lobby/scheduled/one_sec_loop 1s
schedule function du-in:lobby/scheduled/two_sec_loop 2s
scoreboard players set #main winners 0
gamemode adventure @a


execute as @a run function du-in:music/lobby/stop/lobby
scoreboard players set @a music 0


tp @a -999 13 517 -90 0
spawnpoint @a -999 13 517

#Create new gamemode select label
kill @e[type=area_effect_cloud,tag=gamemodeLabel]
summon area_effect_cloud -983 16 517 {Duration:2147483647,Tags:["gamemodeLabel"],CustomNameVisible:1b}
function du-in:lobby/display/default/text

tag @a remove win
tag @a remove tie
tag @a remove lose
tag @a remove endSeq