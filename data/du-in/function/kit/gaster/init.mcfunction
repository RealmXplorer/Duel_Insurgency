#Give Ability Item
#execute if entity @s[level=1] run function du-in:kit/gaster/ability/item

#Activate ability - Now in kit/all/ability/activate
#execute if entity @s[tag=kitActions] run function du-in:kit/gaster/ability/init

#Abiltiy In Use
execute if entity @s[scores={gasterTimer=-1..}] run function du-in:kit/gaster/ability/shattered

#Ability Attribute
attribute @s[tag=gasterInvisible] minecraft:knockback_resistance base set 10

#NOT VILLAGER#
execute if entity @s[tag=!stolen] run function du-in:kit/gaster/constant