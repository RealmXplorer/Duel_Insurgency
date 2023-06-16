tag @s add pussFear
clear @s #du-in:weapon
clear @s #du-in:secondary
#attribute @s generic.armor base set -3
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5
tellraw @s [{"text":"You dropped your weapon!","bold":true,"color":"red"}]
attribute @s[tag=!pussFear] generic.knockback_resistance base set 0
scoreboard players set @s pussFearTimer 50

tag @s remove pussHit
tag @s remove sabotaged