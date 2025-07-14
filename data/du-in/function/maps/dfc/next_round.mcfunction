#Resets
scoreboard players set #main winners 0
gamemode adventure @a

execute as @a run function du-in:music/lobby/stop/lobby
scoreboard players set @a music 0

#Set up lobby again
function du-in:maps/dfc/lobby_setup

#Clear tags
tag @a remove audience
tag @a remove win
tag @a remove tie
tag @a remove lose
tag @a remove endSeq