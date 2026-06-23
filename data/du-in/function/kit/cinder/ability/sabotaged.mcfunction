function du-in:kit/all/ability/sabotage/effects

tag @s add cinderHit

#particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:small_flame ~ ~1 ~ 1 1 1 0.05 50 force
particle minecraft:flame ~ ~1 ~ 0 0 0 0.4 100 force
playsound minecraft:cinder.boom master @a ~ ~ ~ 100 1
particle minecraft:flash{color:0xffffff} ~ ~1 ~ 0 0 0 0 10 normal

execute if entity @s[tag=!empower] run function du-in:kit/cinder/ability/sword/damage
execute if entity @s[tag=empower] run function du-in:kit/cinder/ability/sword/empowered_damage

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels
tag @s remove sabotaged
tag @s remove empower
tag @a remove cinderHit
tag @s add kitDone