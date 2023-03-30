tag @s add pussFear
item replace entity @s weapon.mainhand with air
attribute @s generic.armor base set -3
attribute @s[tag=!pussFear] generic.knockback_resistance base set 0
scoreboard players set @s pussFearTimer 60
#scoreboard players reset @s pussRayStep