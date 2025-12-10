#Kill and tag
execute if entity @s[tag=!projectile] run tag @s add projectile
#execute if entity @s[type=!snowball,nbt={inGround:1b}] run kill @s
execute if entity @s[predicate=du-in:no_motion] run kill @s

#Asgore Trident
execute if entity @s[type=trident] run function du-in:kit/asgore/passive/trident