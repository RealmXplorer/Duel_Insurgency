#Go invisible. Lose Axe, but refill Venom Injector. Injector does more damage (?). If hit while invis, pulled out of ability state.

#This tag makes it so that Pawbert won't be given his axe back while invisible
tag @s add pawbertInvisible
clear @s #du-in:weapon
scoreboard players set @s pawbertTimer 60
effect give @s resistance 1 0 true

#Refill Venom injector
tag @s remove venomEmpty
function du-in:kit/pawbert/secondary/item

#Remove reserve Venom
clear @s gunpowder
tag @s remove hasVial

#Ability Effects
clear @s #du-in:armor
effect give @s invisibility infinite 1 true

execute if entity @s[tag=void] if entity @e[distance=0.05..4] run function du-in:kit/pawbert/ability/void/near

tag @a[distance=0.05..3,tag=playing] add wildeHit
execute as @a[tag=wildeHit] unless score @s team = @p[scores={kit=23},tag=kitActions,distance=..3] team run function du-in:kit/nick/ability/enemy_hit

#Start cooldown
clear @s #du-in:ability
tag @s add cooldown
