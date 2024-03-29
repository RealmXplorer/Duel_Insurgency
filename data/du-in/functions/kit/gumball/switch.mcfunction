scoreboard players add @s gumballSwitch 1
scoreboard players set @s[scores={gumballSwitch=3..}] gumballSwitch 1

execute if entity @s[scores={gumballSwitch=1}] run tag @s add darwin

execute if entity @s[scores={gumballSwitch=2}] run tag @s remove darwin
execute if entity @s[scores={gumballSwitch=2}] run effect clear @s dolphins_grace
execute if entity @s[scores={gumballSwitch=2}] run effect clear @s water_breathing

#scoreboard players set @s weapCount 0
scoreboard players set @s gumSwapTimer 30
clear @s
function du-in:kit/gumball/weapon
execute unless entity @s[level=1..] run xp add @s 30 levels
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.25
particle minecraft:dust 1 1 1 1 ~ ~1 ~ .5 .5 .5 1 100 force
tag @s remove secKitActions
#[scores={parryWindow=..0}]
#execute unless entity @s[scores={parryWindow=0..}] run 