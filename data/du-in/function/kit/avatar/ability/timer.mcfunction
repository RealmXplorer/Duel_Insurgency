scoreboard players remove @s aangShoot 1

execute if entity @s[scores={aangShoot=50}] run function du-in:kit/avatar/ability/shoot
execute if entity @s[scores={aangShoot=39}] run function du-in:kit/avatar/ability/shoot
execute if entity @s[scores={aangShoot=19}] run function du-in:kit/avatar/ability/shoot
execute if entity @s[scores={aangShoot=1}] run function du-in:kit/avatar/ability/shoot

execute if entity @s[scores={aangShoot=..0}] run function du-in:kit/avatar/ability/end