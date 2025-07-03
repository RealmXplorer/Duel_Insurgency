#Sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/sauron/events/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/sauron/events/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/sauron/events/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/sauron/events/jump

#Attributes
#-change
#execute if entity @s[tag=!hasRing] run function du-in:kit/sauron/weak_attributes
#execute if entity @s[tag=hasRing] run function du-in:kit/sauron/ring_attributes

#A REGRETTABLE DECISION
#I HOPED HE WOULD 
#DIVULGE 
#HIS SECRETS OF IMMORTALITY

#HE HAS ONLY IMBUED A DESIRE TO
#ESCAPE

#THERE HAS BEEN AN IMBALANCE
#LIKE A CHEMICAL EQUATION
#I MUST CORRECT