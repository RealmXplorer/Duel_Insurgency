tp @s @r[tag=playing,gamemode=!spectator,tag=!kitActions]

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 450 levels

playsound minecraft:saul.ability voice @a ~ ~ ~ 0.5 1

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone