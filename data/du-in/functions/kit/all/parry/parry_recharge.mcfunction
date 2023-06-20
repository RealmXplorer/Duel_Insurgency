playsound minecraft:entity.warden.sonic_charge master @s[tag=parried] ~ ~ ~ .5 2
playsound minecraft:entity.warden.sonic_charge master @s[tag=!parried] ~ ~ ~ .5 2
tag @s remove parryStart
tag @s remove parried
scoreboard players reset @s parryCooldown