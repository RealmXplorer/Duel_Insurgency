tp @s 2001 52 1993 90 0
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5

execute unless entity @a[tag=shop] run function du-in:lobby/actions/shop/summon

tag @s add shop
tag @s add subLobby
function du-in:music/lobby/stop/lobby
scoreboard players set @s music 0
#Summon icons
clear @s
title @s title {"text":"","color":"red","bold":true}
title @s subtitle {"text":"","color":"red","bold":true}
#function du-in:other/afk/end
tag @s add skinMenu
tag @s[tag=shop] add skinsListed

scoreboard players reset @s toShop