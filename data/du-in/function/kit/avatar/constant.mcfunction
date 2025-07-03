#Sounds#
execute if entity @s[scores={hit=5..}] run function du-in:kit/avatar/events/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/avatar/events/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/avatar/events/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/avatar/events/jump

#Water Healing
execute if block ~ ~ ~ water rotated as @s run function du-in:kit/avatar/water/heal

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