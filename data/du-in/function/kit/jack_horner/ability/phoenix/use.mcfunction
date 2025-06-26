execute unless entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/jack_horner/ability/phoenix/raycast
execute if entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/jack_horner/ability/phoenix/void/raycast

playsound minecraft:sans.ability master @a ~ ~ ~ .25 1

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick

#Start cooldown
xp set @s[tag=!stolen] 320 levels

#End ability
function du-in:kit/jack_horner/ability/end