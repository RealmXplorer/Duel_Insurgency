scoreboard players set @s ringInvisTimer 200
tag @s add ringInvisible
clear @s #du-in:armor
attribute @s armor modifier add ring_armor 10 add_value

playsound minecraft:sans.ability master @a ~ ~ ~ 1 1 1
playsound minecraft:entity.breeze.idle_air master @a ~ ~ ~ 1 0.5

clear @s carrot_on_a_stick
tag @s add cooldown
tag @s remove kitActions