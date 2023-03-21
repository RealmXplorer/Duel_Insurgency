tag @s remove ethicalBug
clear @s stick
scoreboard players set @s weapCount 0
scoreboard players reset @s bugHit
#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 310 levels

#End ability
function du-in:kit/jack_horner/ability/end