
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

effect give @s wither 2 1 true

xp set @s 360 levels
# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert
