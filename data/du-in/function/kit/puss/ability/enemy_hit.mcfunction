tag @s add pussFear
clear @s #du-in:weapon
clear @s #du-in:secondary
#attribute @s armor base set -3
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5
playsound minecraft:sans.ability master @a ~ ~ ~ 1 1.05

tellraw @s [{text:"You dropped your weapon!",bold:true,color:red}]
scoreboard players set @s pussFearTimer 40
#tag @s add pussDuration
attribute @s knockback_resistance modifier add puss_kb -100 add_value

tag @s remove pussHit