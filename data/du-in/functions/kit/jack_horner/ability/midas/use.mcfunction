tag @s remove midasHand
clear @s stick
scoreboard players set @s weapCount 0

#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s 310 levels

#End ability
function du-in:kit/jack_horner/ability/end
advancement revoke @s only du-in:utility/touch