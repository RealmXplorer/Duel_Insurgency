playsound minecraft:soundeffect.vending master @a ~ ~ ~ 1000 1
scoreboard players add @s weaponTier 1
tag @s remove fortniteCard
clear @s gunpowder
clear @s #du-in:weapon
function du-in:kit/paz/weapon

#Spend Card
title @s actionbar [{text:"-$19.00",bold:true,color:red}]
clear @s minecraft:gunpowder 1

#tag @s add vended
