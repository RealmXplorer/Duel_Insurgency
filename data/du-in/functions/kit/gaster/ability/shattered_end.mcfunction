effect give @s minecraft:strength 2 1 true
effect give @s minecraft:slowness 2 2 true

execute unless score @s gastSkin matches 1 run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
execute if score @s gastSkin matches 1 run particle minecraft:dust 0.75 0.90 1 1 ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force

#tag @s add armor
tag @s remove gasterInvisible
function du-in:kit/all/armor/armor
function du-in:kit/all/weapon/init
#scoreboard players set @s weapCount 0

execute unless score @s gastSkin matches 1 run playsound minecraft:gaster.back master @a ~ ~ ~ 100 1
execute if score @s gastSkin matches 1 run playsound minecraft:ghost.die master @a ~ ~ ~ 100 1

xp set @s[tag=!stolen] 335 levels
execute if entity @s[tag=stolen] run tag @s add kitDone

attribute @s minecraft:generic.knockback_resistance base set 0
tag @s remove cooldown
scoreboard players reset @s gasterTimer