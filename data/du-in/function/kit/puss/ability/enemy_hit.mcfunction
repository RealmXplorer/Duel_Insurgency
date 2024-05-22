tag @s add pussFear
clear @s #du-in:weapon
clear @s #du-in:secondary
#attribute @s generic.armor base set -3
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5
playsound minecraft:sans.ability master @a ~ ~ ~ 1 1.05

tellraw @s [{"text":"You dropped your weapon!","bold":true,"color":"red"}]
scoreboard players set @s pussFearTimer 40
attribute @s generic.knockback_resistance modifier add cd29f460-195f-43fe-8c60-48ef046cc7fa pussKB -100 add_value

tag @s remove pussHit