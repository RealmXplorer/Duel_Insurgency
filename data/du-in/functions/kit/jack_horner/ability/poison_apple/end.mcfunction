clear @s snowball
scoreboard players set @s weapCount 0

#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 330 levels

#End ability
function du-in:kit/jack_horner/ability/end