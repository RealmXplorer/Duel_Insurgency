tp @s[tag=!working] -999 13 517 -90 0
clear @s
function du-in:music/lobby/stop/shop
scoreboard players set @s music 0
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5
function du-in:lobby/item_reset
tag @s remove shop
#function du-in:other/afk/end
scoreboard players reset @s back