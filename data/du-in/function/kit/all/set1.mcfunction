# Spider #
# execute if entity @s[scores={kit=1},tag=!stolen] run function du-in:kit/spider/constant

# Zombie #
execute if score @s kit matches 2 run return run function du-in:kit/zombie/init

# Slime #
execute if score @s kit matches 3 run return run function du-in:kit/slime/init

# Creeper #
execute if score @s kit matches 4 run return run function du-in:kit/creeper/init

# Springtrap #
execute if score @s kit matches 5 run return run function du-in:kit/springtrap/init

# Golem #
#execute if entity @s[scores={kit=6},tag=!stolen] run function du-in:kit/golem/constant

# Player #
execute if score @s[tag=!stolen] kit matches 7 run return run function du-in:kit/player/constant

# Villager #
execute if score @s kit matches 8 run return run function du-in:kit/villager/constant


#THIS WORLD#
#THE PERFECT VESSEL#
#FOR OUR#
#FREEDOM#