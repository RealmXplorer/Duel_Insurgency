#Resets
scoreboard players set #main winners 0
gamemode adventure @a

tag @a add lobby

execute as @a run function du-in:music/lobby/stop/lobby
scoreboard players set @a music 0

#Set up lobby again
#function du-in:lobby/gamemode_select/actions/pick_gamemode

#Clear tags
#tag @a remove audience
tag @a remove win
tag @a remove tie
tag @a remove lose
tag @a remove endSeq