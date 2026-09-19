# Kylo Ren #
#execute if entity @s[scores={kit=17},tag=!stolen] run function du-in:kit/kylo/constant

# Vader #
execute if score @s[tag=!stolen] kit matches 18 run return run function du-in:kit/vader/constant

# Palpatine #
execute if score @s kit matches 19 run return run function du-in:kit/palps/init

#Yharim#
execute if score @s kit matches 20 run return run function du-in:kit/yharim/init

# CUPHEAD #
execute if score @s[tag=!stolen] kit matches 21 run return run function du-in:kit/cuphead/constant

# GUMBALL AND DARWIN #
execute if score @s kit matches 22 run return run function du-in:kit/gumball/init

# Nick Wilde #
execute if score @s[tag=!stolen] kit matches 23 run return run function du-in:kit/nick/constant

# Ralsei #
execute if score @s[tag=!stolen] kit matches 24 run function du-in:kit/ralsei/constant