#Spider Ability - now in kit/all/ability/activate
# execute if entity @s[tag=kitActions] run function du-in:kit/spider/ability/init

#Ability item#
execute if entity @s[level=1] run function du-in:kit/spider/ability/item

#Non-Villager#
execute if entity @s[tag=!stolen] run function du-in:kit/spider/constant