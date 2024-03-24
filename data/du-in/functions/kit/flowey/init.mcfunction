#Ability Item
#execute if entity @s[level=1] run function du-in:kit/flowey/ability/item

#Start ability# - Now in kit/all/ability/activate
# execute if entity @s[tag=kitActions] run function du-in:kit/flowey/ability/init

#Burrowing ability
execute if entity @s[scores={floweyHitTimer=-1..},tag=!lose] run function du-in:kit/flowey/ability/burrow

#Non Villager functions
execute if entity @s[tag=!stolen] run function du-in:kit/flowey/constant


#MY EXPERIMENTS
#HAVE FAILED YOU
#WHAT HAVE THEY 
#DONE TO YOU