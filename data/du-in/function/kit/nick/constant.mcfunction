# execute if entity @s[scores={hit=5..}] run function du-in:kit/nick/events/hit
# execute if entity @s[scores={step=150..}] run function du-in:kit/nick/events/step
# execute if entity @s[scores={sprint=150..}] run function du-in:kit/nick/events/step
# execute if entity @s[scores={jump=1..}] run function du-in:kit/nick/events/jump

effect give @s[predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true