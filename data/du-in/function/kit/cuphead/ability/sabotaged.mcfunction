effect give @s slowness 1 100 true
playsound minecraft:cuphead.parry master @a ~ ~ ~ 1 1
effect give @s minecraft:levitation 1 10 true
#clear @s warped_fungus_on_a_stick
function du-in:kit/all/ability/sabotage/effects

scoreboard players remove @s[scores={cardPower=10..}] cardPower 10
scoreboard players set @s floatTimer 7
scoreboard players set @s parryTimer 95
damage @s 10 generic

xp set @s[tag=!stolen] 320 levels
clear @s carrot_on_a_stick
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
