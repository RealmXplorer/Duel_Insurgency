clear @s #du-in:ability
xp set @s[tag=!stolen] 350 levels

function du-in:kit/all/ability/sabotage/effects

effect give @s minecraft:slowness 2 3 true
#execute if entity @s[tag=!asFound,tag=teamDead] run say Grave gone but you live
title @s[tag=!asFound] actionbar {text:"Grave Stolen! You are depressed!",bold:true,color:red}
playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1 .5

tag @s remove sabotaged
tag @s remove kitActions