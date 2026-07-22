tag @s add ponderOrb
tag @r[gamemode=adventure,tag=!ponderOrb] add pondered

execute if entity @s[tag=!empower] run effect give @a[tag=!ponderOrb,tag=pondered] glowing 3 2 true
execute if entity @s[tag=empower] run effect give @a[tag=!ponderOrb,tag=pondered] glowing 5 2 true

tag @a[tag=!ponderOrb,tag=pondered] add glowing
playsound minecraft:jack_horner.orb hostile @a ~ ~ ~ 1 1
tag @s remove ponderOrb

effect give @s speed 3 2 true

playsound minecraft:entity.evoker.cast_spell master @a
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .1 1

#Remove ability from hand
clear @s #du-in:ability
#Start cooldown
xp set @s[tag=!stolen] 230 levels

#End ability
function du-in:kit/jack_horner/ability/end