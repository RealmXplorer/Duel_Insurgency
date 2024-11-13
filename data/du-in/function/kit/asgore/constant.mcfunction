execute if entity @s[scores={hit=5..}] run function du-in:kit/asgore/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/asgore/sounds/jump

#TRIDENT#
execute if entity @s[scores={trident=1..}] run function du-in:kit/asgore/passive/trident

#End trident cooldown
execute if entity @s[tag=thrown,scores={tridentTimer=0..}] run function du-in:kit/asgore/passive/timer

#MY KING
#TRULY A SHAME
#WHAT HAS HAPPENED TO YOU
#WORRY NOT MY LORD
#OUR DAY OF GLORY
#IS AT HAND