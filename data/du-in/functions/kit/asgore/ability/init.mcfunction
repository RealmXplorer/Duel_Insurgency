#Summon Fire wall
    #This one is tagged to play the extinguish and burning sounds.
    execute unless entity @s[tag=sabotaged] run function du-in:kit/asgore/ability/unsabotaged
    execute if entity @s[tag=sabotaged] run function du-in:kit/asgore/ability/contact

#Play Particles and sounds
particle minecraft:flame ~ ~.1 ~ 0.6 .6 0.6 0 100 force
particle minecraft:flash ^1.5 ^1 ^2 0.1 1 0.1 1 10 force
particle minecraft:explosion ^1.5 ^1 ^2 0.1 1 0.1 1 10 force

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:asgore.ability master @a ~ ~ ~ 100 .1
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1

#Reset
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 380 levels

#End ability
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove kitActions