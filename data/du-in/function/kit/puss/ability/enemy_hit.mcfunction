tag @s add pussFear
clear @s #du-in:weapon
clear @s #du-in:secondary
#attribute @s armor base set -3
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5
playsound du-in:sfx.ut.ability master @a ~ ~ ~ 1 1.05

tellraw @s [{text:"You dropped your weapon!",bold:true,color:red}]
scoreboard players set @s pussFearTimer 40
#tag @s add pussDuration
execute unless score #puss running matches 1 run function du-in:kit/puss/ability/loop

attribute @s knockback_resistance modifier add puss_kb -100 add_value

tag @s remove pussHit