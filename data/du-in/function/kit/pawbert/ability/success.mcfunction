#Go invisible. Lose Axe, but refill Venom Injector. Injector does more damage (?). If hit while invis, pulled out of ability state.

#This tag makes it so that Pawbert won't be given his axe back while invisible
tag @s add pawbertInvisible
clear @s #du-in:weapon

#Refill Venom injector
tag @s remove venomEmpty
function du-in:kit/pawbert/secondary/item

#Remove reserve Venom
clear @s gunpowder
tag @s remove hasVial

#Ability Effects
clear @s #du-in:armor
effect give @s invisibility infinite 1 true


#Start cooldown
clear @s #du-in:ability
tag @s add cooldown
