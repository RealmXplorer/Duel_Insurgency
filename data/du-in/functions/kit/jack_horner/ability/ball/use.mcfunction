tag @s add ponderOrb
tag @r[tag=!ponderOrb] add pondered
effect give @a[tag=!ponderOrb,tag=pondered] glowing 3 2 true
playsound minecraft:jack_horner.orb hostile @a ~ ~ ~ 1 1
tag @s remove ponderOrb

effect give @s speed 3 2 true
playsound minecraft:entity.evoker.cast_spell master @a

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 230 levels

#End ability
function du-in:kit/jack_horner/ability/end