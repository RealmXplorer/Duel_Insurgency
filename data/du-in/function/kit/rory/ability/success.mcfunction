#scoreboard players set @s aangShoot 190
swing @s offhand whack

scoreboard players set @s starCount 4


#End Ability
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .5 1.15

clear @s #du-in:ability
tag @s add cooldown
tag @s remove kitActions