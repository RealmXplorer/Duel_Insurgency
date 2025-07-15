#This function teleports players back to gamemode select from parkour
scoreboard players set @s music 0
function du-in:music/lobby/stop/parkour

#This function returns players to Gamemode select from credits
# execute unless entity @a[tag=partyLeader,tag=specialEvent] run tp @s -999 13 517 -90 0
tp @s -999 13 517 -90 0

#If in special event
# execute if entity @a[tag=partyLeader,tag=specialEvent] run tp @s -4279 23 -2317

tag @s remove parkour
tag @s remove subLobby
clear @s
function du-in:lobby/reset/item
function du-in:lobby/scheduled/gamemode_select

playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 100 1
