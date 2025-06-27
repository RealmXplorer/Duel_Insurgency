effect clear @s speed
effect clear @s invisibility

effect give @s[tag=!sabotaged] minecraft:strength 2 1 true
effect give @s[tag=sabotaged] minecraft:mining_fatigue 2 1 true

effect give @s minecraft:slowness 2 2 true

execute unless score @s gastSkin matches 1 run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force
execute if score @s gastSkin matches 1 run particle minecraft:dust{color:[0.75, 0.90, 1.0],scale:1.0} ~ ~1.5 ~ 0.2 0.5 0.2 0 150 force

tag @s remove gasterInvisible
function du-in:kit/all/armor/armor
function du-in:kit/all/weapon/init

execute unless score @s gastSkin matches 1 run playsound minecraft:gaster.back master @a ~ ~ ~ 100 1
execute if score @s gastSkin matches 1 run playsound minecraft:ghost.die master @a ~ ~ ~ 100 1

attribute @s knockback_resistance modifier remove gaster_shatter
attribute @s movement_speed modifier remove gaster_shatter

tag @s remove sabotaged
tag @s remove cooldown
xp set @s[tag=!stolen] 335 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
scoreboard players reset @s gasterTimer