#If Springlocked
execute if entity @s[tag=springLock] run function du-in:kit/springtrap/ability/springlocked

#Ability#
#execute if entity @s[level=1] run function du-in:kit/springtrap/ability/item

#Ability activate - Now in kit/all/ability/activate
# execute if entity @s[tag=kitActions] run function du-in:kit/springtrap/ability/init

#NON-Villager
execute if entity @s[tag=!stolen] run function du-in:kit/springtrap/constant