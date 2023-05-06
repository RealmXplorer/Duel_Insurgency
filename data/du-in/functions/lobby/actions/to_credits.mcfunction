playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5

#kill @e[type=item,nbt={Item:{tag:{weaponItem:1b}}}]

tp @s 156 82 49 90 0
clear @s

#Stop and start music
function du-in:music/lobby/stop/lobby
scoreboard players set @s music 0

#Titles
title @s title {"text":"","color":"red","bold":true}
title @s subtitle {"text":"","color":"red","bold":true}

#Add sublobby tags
tag @s add credits
tag @s add subLobby

#Resets item status
function du-in:lobby/item_reset

#This is to prevent a bug.
execute if entity @s[scores={kitUseThrow=1..}] run function du-in:other/clear_ground_items

function du-in:lobby/scheduled/credits
