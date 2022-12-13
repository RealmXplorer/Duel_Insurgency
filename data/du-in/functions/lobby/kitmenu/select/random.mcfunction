tag @s add random
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 1.5
title @s actionbar ["",{"text":"Random kit selected!","bold":true,"color":"blue"}]
#tag @s add mystery
function du-in:lobby/kitmenu/select/common
#tag @s remove spect
#tag @s add kitPicked
#tag @s add mysteryHead
tellraw @s [{"text":"Selected a ","bold":true,"color":"gray"},{"text":"Random ","bold":true,"color":"dark_blue"},{"text":"kit!","bold":true,"color":"gray"}]
advancement grant @s only du-in:random
#clear @s minecraft:player_head
clear @s barrier{CustomModelData:100}
#scoreboard players reset @s randomItem