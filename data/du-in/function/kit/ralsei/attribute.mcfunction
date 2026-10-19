#Attributes#
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/attribute/size/small

#Prevent regen sound from playing when it shouldn't
tag @s remove small
tag @s add tiny

#Ralsei Attributes
attribute @s minecraft:max_health base set 14
attribute @s movement_speed base set 0.145
attribute @s knockback_resistance base set 0.01

execute store result score @s maxHealth run attribute @s max_health base get