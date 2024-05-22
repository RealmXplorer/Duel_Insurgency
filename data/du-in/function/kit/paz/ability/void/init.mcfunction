
tp @e[type=skeleton,tag=gonerThing] @e[sort=random,type=marker,tag=gonerSpawn,limit=1]

#Play sounds
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 .5
playsound minecraft:ui.button.click master @a ~ ~ ~ 10


#Give Paz bonus effects
effect give @s speed 2 0 true
effect give @s strength 2 0 true

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick

#Start cooldown
xp set @s[tag=!stolen] 600 levels

#End ability
tag @s remove kitActions