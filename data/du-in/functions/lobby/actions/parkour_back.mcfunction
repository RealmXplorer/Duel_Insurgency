#This function teleports players back to gamemode select from parkour
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 100 1
scoreboard players set @s music 0
function du-in:music/lobby/stop/parkour
tp @s -999 13 517 -90 0
tag @s remove parkour
tag @s remove subLobby
#function du-in:other/afk/end
clear @s
function du-in:lobby/item_reset