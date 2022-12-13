scoreboard players add @s gumballPursueTimer 1

particle minecraft:flame ~ ~ ~ 0.2 0 0.2 0 20 force
playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 2
execute if entity @a[distance=0.05..1.5,tag=playing] run function du-in:kit/gumball/ability/gumball/explode

execute if entity @s[scores={gumballPursueTimer=40..}] run function du-in:kit/gumball/ability/gumball/miss