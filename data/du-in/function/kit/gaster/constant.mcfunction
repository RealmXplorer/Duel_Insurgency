execute if entity @s[scores={hit=5..}] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/hit
execute if entity @s[scores={hit=5..,gastSkin=2}] run function du-in:kit/gaster/sounds/spamhit
execute if entity @s[scores={jump=1..},tag=!gasterInvisible] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/jump

#THIS NEXT EXPERIMENT WILL BE
#VERY
#VERY
#INTERESTING