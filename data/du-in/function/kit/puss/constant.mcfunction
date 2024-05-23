#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/puss/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/puss/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/puss/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Use ability
execute if entity @s[tag=secKitActions] run function du-in:kit/puss/secondary/switch

execute store result score @s[scores={gameDeaths=4..},tag=!void] secCount run clear @s warped_fungus_on_a_stick 0
execute store result score @s[tag=void] secCount run clear @s warped_fungus_on_a_stick 0

#Secondary Item
execute unless entity @s[scores={secCount=1}] unless entity @s[scores={pussSwapTimer=1..}] if entity @s[tag=!teamDead] run function du-in:kit/puss/secondary

execute if entity @s[scores={pussSwapTimer=-1..}] run function du-in:kit/puss/secondary/timer