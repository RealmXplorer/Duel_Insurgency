playsound minecraft:asriel.charge master @a ~ ~ ~ 5 1
title @s actionbar {text:"Next strong hit will damage enemies and become stars",bold:true,color:green}
tag @s add asrielCharge
clear @s wooden_sword
#scoreboard players set @s weapCount 0
function du-in:kit/asriel/weapon
