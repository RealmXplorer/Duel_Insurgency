#Ability#
execute if entity @s[level=1] run function du-in:kit/player/ability/item

#Activate Ability# - Now in kit/all/ability/activate
#execute if entity @s[tag=kitActions] run function du-in:kit/player/ability/init

execute if entity @s[tag=!stolen] run function du-in:kit/player/constant