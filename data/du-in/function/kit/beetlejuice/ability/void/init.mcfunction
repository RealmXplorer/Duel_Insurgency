
tp @e[type=skeleton,tag=gonerThing] @e[sort=random,type=marker,tag=gonerSpawn,limit=1]

#Play sounds
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 .5
playsound minecraft:ui.button.click master @a ~ ~ ~ 10


#Give bonus effects
effect give @s[tag=!empower] speed 2 0 true
effect give @s[tag=!empower] strength 2 0 true

execute if entity @s[tag=empower] run effect give @s speed 4 0 true
execute if entity @s[tag=empower] run effect give @s strength 4 1 true



#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
xp set @s[tag=!stolen] 600 levels

#Remove empower
tag @s remove empower

#End ability
tag @s remove kitActions