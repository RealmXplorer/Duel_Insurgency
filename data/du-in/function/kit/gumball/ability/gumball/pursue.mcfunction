scoreboard players add @s gumballPursueTimer 1

particle minecraft:flame ~ ~ ~ 0.2 0 0.2 0 20 force
playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 2
execute if entity @s[tag=!void,scores={gumballPursueTimer=20..}] if entity @a[gamemode=!spectator,distance=0.05..2,tag=playing,tag=!teamDead] run function du-in:kit/gumball/ability/gumball/explode
execute if entity @s[tag=void,scores={gumballPursueTimer=20..}] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..2] run function du-in:kit/gumball/ability/gumball/explode

execute if entity @s[scores={gumballPursueTimer=40..}] run function du-in:kit/gumball/ability/gumball/miss