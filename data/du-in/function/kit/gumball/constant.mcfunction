#Sounds#
execute if entity @s[scores={hit=5..}] run function du-in:kit/gumball/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/gumball/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/gumball/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Tag Gumball and Darwin in and out
execute if entity @s[tag=secKitActions] run function du-in:kit/gumball/secondary/switch

#Secondary Give#
execute unless entity @s[scores={secCount=1}] unless entity @s[scores={gumSwapTimer=1..}] if entity @s[tag=!teamDead] run function du-in:kit/gumball/secondary/item

#Kit switch cooldown timer
execute if entity @s[scores={gumSwapTimer=-1..}] run function du-in:kit/gumball/secondary/timer

#Reset fake sidebar
execute if entity @s[scores={fakeTimer=0..}] run function du-in:kit/gumball/ability/gumball/fake_reset


#Check for if they have secondary
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

#Attributes
effect give @s[tag=darwin] dolphins_grace infinite 1 true
effect give @s[tag=darwin] water_breathing infinite 1 true