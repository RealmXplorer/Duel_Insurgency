scoreboard players add @s deathWeapSwitch 1
scoreboard players set @s[scores={deathWeapSwitch=3..}] deathWeapSwitch 1

execute if entity @s[scores={deathWeapSwitch=1}] run tag @s add deathDouble

execute if entity @s[scores={deathWeapSwitch=2}] run tag @s remove deathDouble

clear @s #du-in:weapon
clear @s #du-in:secondary
clear @s carrot_on_a_stick

playsound minecraft:death.switch master @a ~ ~ ~

scoreboard players set @s weapCount 0
scoreboard players set @s deathSwapTimer 30

execute unless entity @s[level=1..] run xp add @s 30 levels
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.25
particle minecraft:dust 1 1 1 1 ~ ~1 ~ .5 .5 .5 1 100 force
tag @s remove secKitActions
#[scores={parryWindow=..0}]
#execute unless entity @s[scores={parryWindow=0..}] run 