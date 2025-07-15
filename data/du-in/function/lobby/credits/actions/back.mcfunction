#This function returns players to Gamemode select from credits
#execute unless entity @a[tag=partyLeader,tag=specialEvent] run tp @s -999 13 517 -90 0
tp @s -999 13 517 -90 0

#If in special event
#execute if entity @a[tag=partyLeader,tag=specialEvent] run tp @s -4279 23 -2317

#stopsound @s record minecraft:music.credits
stopsound @s record minecraft:music.free
stopsound @s record minecraft:music.credits
scoreboard players set @s music 0
effect clear @s invisibility
clear @s
schedule clear du-in:music/free/free
function du-in:lobby/reset/item
tag @s remove credits
tag @s remove subLobby
title @s title ""
title @s subtitle ""
function du-in:lobby/scheduled/gamemode_select
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5
