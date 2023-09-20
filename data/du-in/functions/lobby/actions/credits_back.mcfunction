#This function returns players to Gamemode select from credits
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5
tp @s -999 13 517 -90 0
#stopsound @s record minecraft:music.credits
stopsound @s record minecraft:music.free
stopsound @s record minecraft:music.credits
scoreboard players set @s music 0
effect clear @s invisibility
clear @s
schedule clear du-in:music/free/free
function du-in:lobby/item_reset
tag @s remove credits
tag @s remove subLobby
title @s title ""
title @s subtitle ""
function du-in:lobby/scheduled/gamemode_select
