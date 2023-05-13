effect clear @s minecraft:speed
##COPYRIGHT
stopsound @s master minecraft:gumball.ability
particle minecraft:poof ~ ~ ~ 0 0.2 0 0.1 30
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~
effect give @s slowness 2 0 true

##COPYRIGHT
execute if entity @s[tag=!stolen,tag=!whatTheWhat] run playsound minecraft:gumball.fail master @a ~ ~ ~ 1 1
execute if entity @s[tag=!stolen,tag=whatTheWhat] run playsound minecraft:gumball.what master @a ~ ~ ~ 1 1
execute if entity @s[tag=stolen] run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 1

tag @s remove whatTheWhat
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove pursue
scoreboard players reset @s gumballPursueTimer