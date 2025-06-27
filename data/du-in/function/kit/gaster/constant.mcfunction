execute if entity @s[scores={hit=5..}] unless entity @s[scores={gastSkin=2..3}] run function du-in:kit/gaster/events/hit
execute if entity @s[scores={hit=5..,gastSkin=2}] run function du-in:kit/gaster/events/spamhit
execute if entity @s[scores={hit=5..,gastSkin=3}] run function du-in:kit/gaster/events/mouth_hit
execute if entity @s[scores={jump=1..},tag=!gasterInvisible] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/events/jump

#THIS NEXT EXPERIMENT WILL BE
#VERY
#VERY
#INTERESTING