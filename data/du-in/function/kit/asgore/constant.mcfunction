#execute if entity @s[scores={hit=5..}] run function du-in:kit/asgore/events/hit
#execute if entity @s[scores={step=150..}] run function du-in:kit/asgore/events/step
#execute if entity @s[scores={sprint=150..}] run function du-in:kit/asgore/events/step
#execute if entity @s[scores={jump=1..}] run function du-in:kit/asgore/events/jump

#End trident cooldown
execute if entity @s[tag=thrown,scores={tridentTimer=0..}] run function du-in:kit/asgore/passive/timer

#MY KING
#TRULY A SHAME
#WHAT HAS HAPPENED TO YOU
#WORRY NOT MY LORD
#OUR DAY OF GLORY
#IS AT HAND