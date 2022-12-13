scoreboard players set @s yharimTimer 60
function du-in:kit/yharim/ability/effects

playsound minecraft:terraria.drink master @a ~ ~ ~ 20 .1 1
playsound minecraft:terraria.drink master @a ~ ~ ~ 20 2 1
playsound minecraft:terraria.golkill master @a ~ ~ ~ 1 .5 1
particle minecraft:ash ~ ~2.25 ~ .75 .5 .75 1.25 200 force @a
particle minecraft:soul ~ ~1 ~ .1 .1 .1 0.1 50 force @a
particle minecraft:soul_fire_flame ~ ~1 ~ .1 .1 .1 0.1 50 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75
particle minecraft:cloud ~ ~1 ~ 0.30 .30 0.30 0 10 force
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ .5 .85

clear @s minecraft:carrot_on_a_stick
xp set @s 380 levels
tag @s[tag=stolen] add kitDone
tag @s remove kitActions
