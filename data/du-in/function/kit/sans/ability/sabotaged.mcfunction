scoreboard players set @s ralseiTimer 70
tag @s add sleepDuration
execute unless score #sleep running matches 1 run function du-in:kit/ralsei/ability/sleep_loop
swing @s offhand stab

function du-in:kit/all/ability/sabotage/effects
clear @s #du-in:ability
function du-in:kit/sans/ability/end