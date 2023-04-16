execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/frisk/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/frisk/sounds/jump

# FRISK #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/frisk/armor 

execute if entity @s[level=1] run function du-in:kit/frisk/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/frisk/ability/init

execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/frisk/weapon

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
attribute @s[tag=!stolen,tag=!pussFear,tag=!parry] generic.knockback_resistance base set 0.035

#THE VERY POWER
#I STUDIED
#THE VERY POWER
#I DIED FOR
#PERHAPS I TOO
#CAN CONTINUE