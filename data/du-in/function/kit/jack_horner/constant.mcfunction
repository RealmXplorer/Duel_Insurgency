#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/jack_horner/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/jack_horner/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump