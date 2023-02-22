playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5
tag @s add shop
tag @s add subLobby
function du-in:music/lobby/stop/lobby
scoreboard players set @s music 0
tp @s 2001 52 1993 90 0
clear @s
title @s title {"text":"","color":"red","bold":true}
title @s subtitle {"text":"","color":"red","bold":true}
#function du-in:other/afk/end
scoreboard players reset @s toShop