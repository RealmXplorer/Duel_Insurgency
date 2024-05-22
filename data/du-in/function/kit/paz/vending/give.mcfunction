playsound minecraft:soundeffect.vending master @a ~ ~ ~ 1000 1
scoreboard players add @s weaponTier 1
tag @s remove fortniteCard
clear @s gunpowder
clear @s #du-in:weapon
function du-in:kit/paz/weapon
tag @s add vended
