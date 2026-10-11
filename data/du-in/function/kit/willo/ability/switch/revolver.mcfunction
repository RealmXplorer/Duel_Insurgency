tag @s remove secondExempt
tag @s add noMainWeapon
clear @s #du-in:weapon
clear @s #du-in:secondary
clear @s #du-in:ability
clear @s coal
function du-in:kit/willo/secondary/item
scoreboard players set @s kitGender 4
tag @s remove willoKnife
function du-in:kit/willo/armor