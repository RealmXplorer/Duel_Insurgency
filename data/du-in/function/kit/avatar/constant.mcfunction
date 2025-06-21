#Sounds#
execute if entity @s[scores={hit=5..}] run function du-in:kit/avatar/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/avatar/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/avatar/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/avatar/sounds/jump

execute if block ~ ~ ~ water rotated as @s run effect give @s regeneration 1 0 true

#Attributes#
execute if entity @s[predicate=!du-in:effect/is_on_fire] run function du-in:kit/avatar/fire/default

#Burning attributes for if he is on fire.
execute if entity @s[predicate=du-in:effect/is_on_fire] run function du-in:kit/avatar/fire/burn

#THE ARRIVAL OF SAURON
#BROUGHT MANY REGRETS
#I CANNOT SEND HIM BACK
#HIS VALUE IS TOO GREAT TO MY WORK

#PERHAPS HE CAN BE PERSUADED
#PERHAPS I CAN FORCE THE BALANCE