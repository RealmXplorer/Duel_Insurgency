execute if entity @s[predicate=du-in:quarter_chance,tag=cIngame,tag=!stolen,tag=!ranMode] run function du-in:kit/gumball/ability/gumball/fake_classic
playsound minecraft:gumball.ability master @a ~ ~ ~ 1 1

tag @s add pursue
effect give @s minecraft:speed 2 7 true
clear @s carrot_on_a_stick
xp set @s[tag=!stolen] 300 levels
scoreboard players set @s gumSwapTimer 120
clear @s warped_fungus_on_a_stick

tag @s remove kitActions