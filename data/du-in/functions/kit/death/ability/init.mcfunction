tag @s add deathAbility
scoreboard players set @s deathAbilityTimer 40
effect clear @s glowing

effect give @s fire_resistance 3 0 true
effect give @s[tag=deathMark] strength 2 0 true
effect give @s[tag=deathMark] regeneration 2 0 true

function du-in:kit/death/ability/raycast

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s 340 levels

#Switch villager back to their ability
tag @s[tag=stolen] add kitDone
#End ability
tag @s remove kitActions