
#Activate Ability
#execute if entity @s[tag=kitActions] run function du-in:kit/chara/ability/init

#Ability item#
execute if entity @s[level=1] run function du-in:kit/chara/ability/item

#Ability duration
execute if entity @s[scores={charaTimer=0..}] run function du-in:kit/chara/ability/head

#Not Villager#
execute if entity @s[tag=!stolen] run function du-in:kit/chara/constant