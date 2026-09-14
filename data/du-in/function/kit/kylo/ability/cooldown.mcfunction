playsound du-in:sfx.ut.ability master @a ~ ~ ~ .15 1

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

xp set @s[tag=!stolen] 360 levels
clear @s #du-in:ability
tag @s remove sabotaged
tag @s remove empower
execute if entity @s[tag=stolen] run tag @s add kitDone