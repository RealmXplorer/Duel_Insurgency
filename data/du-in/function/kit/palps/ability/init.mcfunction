scoreboard players set @s palpTimer 80
effect give @s minecraft:slowness 3 0 true

clear @s #du-in:ability
#xp set @s[tag=!stolen] 380 levels
playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 20 1.5 1
playsound minecraft:palps.pull master @a ~ ~ ~ 20 .1 1
playsound minecraft:palps.push master @a ~ ~ ~ 1 .5 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1

execute if entity @s[scores={palpsSkin=1}] run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 1 1 1
particle minecraft:cloud ~ ~1 ~ 0.30 .30 0.30 0 10 force
tag @s add cooldown
tag @s remove kitActions