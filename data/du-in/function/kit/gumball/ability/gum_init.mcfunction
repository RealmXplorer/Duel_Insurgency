execute if entity @s[predicate=du-in:chance/quarter_chance,tag=cIngame,tag=!stolen,tag=!ranMode] run function du-in:kit/gumball/ability/gumball/fake_classic

##COPYRIGHT?
playsound minecraft:gumball.ability master @a ~ ~ ~ 1 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1

tag @s add pursue
effect give @s minecraft:speed 2 5 true
clear @s #du-in:ability
xp set @s[tag=!stolen] 380 levels
scoreboard players set @s[tag=!sabotaged] gumSwapTimer 120
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects
execute if entity @s[tag=sabotaged] run function du-in:kit/gumball/ability/gumball/explode

clear @s warped_fungus_on_a_stick
tag @s remove sabotaged
tag @s remove kitActions