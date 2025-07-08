damage @s 10 explosion
function du-in:kit/all/ability/sabotage/effects
particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
particle minecraft:flash ~ ~ ~ 1 1 1 1 10
playsound minecraft:soundeffect.boom master @a ~ ~ ~ 2 .5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1

#clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 40 levels
tag @s[tag=stolen] add kitDone