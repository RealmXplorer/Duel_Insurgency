tag @s remove noMainWeapon
tag @s add secondExempt
clear @s #du-in:weapon
clear @s #du-in:secondary
clear @s #du-in:ability
clear @s coal
function du-in:kit/willo/weapon
scoreboard players set @s kitGender 2
tag @s add willoKnife
function du-in:kit/willo/armor