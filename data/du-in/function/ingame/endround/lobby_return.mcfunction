#ENDTIME 140#
team join lobby @a
scoreboard players set #main lobby 1
scoreboard players set @a lobby 1
tag @a add lobby
function du-in:lobby/scheduled/one_sec_loop
function du-in:lobby/scheduled/two_sec_loop
scoreboard players set #main winners 0
gamemode adventure @a


execute as @a run function du-in:music/lobby/stop/lobby
scoreboard players set @a music 0


# execute if entity @a[tag=partyLeader,tag=specialEvent] run tp @a -4279 23 -2317
# execute if entity @a[tag=partyLeader,tag=specialEvent] run spawnpoint @a -4279 23 -2317


# execute unless entity @a[tag=partyLeader,tag=specialEvent] run function du-in:ingame/endround/default_return

tp @a -999 13 517 -90 0
spawnpoint @a -999 13 517

#Create new gamemode select label
kill @e[type=text_display,tag=gamemodeLabel]
summon text_display -983 16 517 {billboard:"center",Tags:["gamemodeLabel"],}
function du-in:lobby/theme/default/text

#End Function
tag @a remove win
tag @a remove tie
tag @a remove lose
tag @a remove endSeq