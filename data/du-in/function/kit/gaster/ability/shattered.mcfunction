scoreboard players remove @s gasterTimer 1

##Can this be removed?
tag @s add gasterInvisible

#effect give @s minecraft:speed 1 1 true
    #This should run as an attribute modifier now, allowing it to be stacked.
effect give @s minecraft:invisibility 1 255 true

effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:weakness 1 255 true

#execute if entity @s[scores={gasterTimer=20..}] run function du-in:kit/gaster/ability/shattered_effects

execute if entity @s[scores={gasterTimer=..0}] run function du-in:kit/gaster/ability/shattered_end