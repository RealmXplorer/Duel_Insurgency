#ENDTIME 140#
team join lobby @a
scoreboard players set #main lobby 1
scoreboard players set @a lobby 1
tag @a add lobby
schedule function du-in:lobby/scheduled/one_sec_loop 1s
scoreboard players set #main winners 0
gamemode adventure @a[tag=!working,tag=lobby]


execute as @a run function du-in:music/lobby/stop/lobby
scoreboard players set @a music 0


tp @a[tag=!working] -999 13 517 -90 0
spawnpoint @a -999 13 517
tag @a remove win
tag @a remove tie
tag @a remove lose
tag @a remove endSeq