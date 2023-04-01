#Summon Fire wall
    #This one is tagged to play the extinguish and burning sounds.
    execute unless entity @s[tag=sabotaged] run function du-in:kit/asgore/ability/unsabotaged
    execute if entity @s[tag=sabotaged] run function du-in:kit/asgore/ability/contact

#Play Particles and sounds
function du-in:kit/asgore/particle

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 380 levels

#End ability
tag @s[tag=stolen] add kitDone
tag @s remove sabotaged
tag @s remove kitActions