scoreboard players add @s deathWeapSwitch 1
scoreboard players set @s[scores={deathWeapSwitch=3..}] deathWeapSwitch 1

execute if entity @s[scores={deathWeapSwitch=1}] run tag @s add deathDouble
execute if entity @s[scores={deathWeapSwitch=1}] run attribute @s minecraft:generic.movement_speed base set 0.14

execute if entity @s[scores={deathWeapSwitch=2}] run tag @s remove deathDouble
execute if entity @s[scores={deathWeapSwitch=2}] run attribute @s minecraft:generic.movement_speed base set 0.125


clear @s #du-in:weapon
clear @s #du-in:secondary
clear @s carrot_on_a_stick

playsound minecraft:death.switch master @a ~ ~ ~

function du-in:kit/death/weapon
scoreboard players set @s deathSwapTimer 20

execute unless entity @s[level=1..] run xp add @s 3 levels
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.25
particle minecraft:dust{color:[1.0, 1.0, 1.0],scale:1.0} ~ ~1 ~ .5 .5 .5 1 100 force

tag @s remove secKitActions