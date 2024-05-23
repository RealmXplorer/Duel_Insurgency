execute if entity @s[scores={jump=1..}] run function du-in:kit/jump
execute if entity @s[scores={hit=5..}] run function du-in:kit/clairen/sounds/hit

effect give @s[predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true