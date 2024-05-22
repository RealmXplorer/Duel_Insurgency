#Ability
#execute if entity @s[level=1] run function du-in:kit/slime/ability/item

#Activate Ability - Now in kit/all/ability/activate
#execute if entity @s[tag=kitActions] run function du-in:kit/slime/ability/init

#Magma timer
execute if entity @s[scores={magmaTimer=-99..}] run function du-in:kit/slime/ability/timer

#Character Specific (Cannot be used by Villager
execute if entity @s[tag=!stolen] run function du-in:kit/slime/constant