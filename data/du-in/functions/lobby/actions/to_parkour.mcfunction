playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 100 1
tp @s 643 6 -149 0 0
tag @s add parkour
stopsound @s record
scoreboard players set @s music 0
clear @s
title @s title {"text":"","color":"red","bold":true}
title @s subtitle {"text":"","color":"red","bold":true}
#function du-in:other/afk/end
function du-in:lobby/item_reset
scoreboard players set @s toParkour 0