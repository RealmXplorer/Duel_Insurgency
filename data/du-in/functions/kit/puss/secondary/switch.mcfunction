scoreboard players add @s pussWeapSwitch 1
scoreboard players set @s[scores={pussWeapSwitch=3..}] pussWeapSwitch 1

execute if entity @s[scores={pussWeapSwitch=1}] run tag @s add gatitoBlade

execute if entity @s[scores={pussWeapSwitch=2}] run tag @s remove gatitoBlade

clear @s #du-in:weapon
clear @s #du-in:secondary
clear @s carrot_on_a_stick

scoreboard players set @s weapCount 0
scoreboard players set @s pussSwapTimer 30

execute unless entity @s[level=1..] run xp add @s 30 levels
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.25
particle minecraft:dust 1 1 1 1 ~ ~1 ~ .5 .5 .5 1 100 force
tag @s remove secKitActions
#[scores={parryWindow=..0}]
#execute unless entity @s[scores={parryWindow=0..}] run 