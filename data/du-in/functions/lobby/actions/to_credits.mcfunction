playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5
tp @s 156 82 49 90 0
clear @s
function du-in:music/lobby/stop/lobby
scoreboard players set @s music 0
#function du-in:other/afk/end
title @s title {"text":"","color":"red","bold":true}
title @s subtitle {"text":"","color":"red","bold":true}
tag @s add credits
tag @s add subLobby
#scoreboard players reset @s toCredits