scoreboard players set @s[tag=!sabotaged] creeperTimer 40
scoreboard players set @s[tag=sabotaged] creeperTimer 1
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

effect give @s minecraft:speed 2 3 true
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 100 1

#execute if entity @s[scores={creeperTimer=..1}] run execute as @a[distance=0.05..5,tag=playing] if score @s team = @a[limit=1,tag=playing,scores={creeperTimer=..1}] team run effect give @s minecraft:resistance 1 6 true
particle minecraft:flame ~ ~1.5 ~ 0.5 1 0.5 0.1 100 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1

clear @s minecraft:carrot_on_a_stick
tag @s add cooldown
tag @s remove kitActions
