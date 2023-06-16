clear @s[tag=midasHand] stick
scoreboard players set @s[tag=midasHand] weapCount 0

#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen,tag=midasHand] 300 levels

#End ability
execute if entity @s[tag=midasHand] run function du-in:kit/jack_horner/ability/end
advancement revoke @s only du-in:kit/touch