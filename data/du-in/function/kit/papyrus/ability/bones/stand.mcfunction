scoreboard players remove @s papyrusHitTimer 1

#Move bones up
execute if entity @s[scores={papyrusHitTimer=27..}] run tp ~ ~.4 ~

#Move bones down
execute if entity @s[scores={papyrusHitTimer=..6}] run tp ~ ~-.4 ~

#PARTICLES#
execute if entity @s[scores={papyrusHitTimer=29}] run function du-in:kit/papyrus/ability/particle
execute if entity @s[scores={papyrusHitTimer=25}] run function du-in:kit/papyrus/ability/particle
execute if entity @s[scores={papyrusHitTimer=20}] run function du-in:kit/papyrus/ability/particle
execute if entity @s[scores={papyrusHitTimer=10}] run function du-in:kit/papyrus/ability/particle
execute if entity @s[scores={papyrusHitTimer=5}] run function du-in:kit/papyrus/ability/particle

#Kill if no marker is present
execute if entity @s[scores={papyrusHitTimer=..0}] run kill @s