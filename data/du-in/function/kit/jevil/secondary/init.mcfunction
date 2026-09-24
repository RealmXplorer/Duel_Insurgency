tag @s remove secKitActions

#Fail
execute if entity @s[tag=!maxTP] run return run function du-in:kit/jevil/neo_chaos/empty

#Success
function du-in:kit/jevil/neo_chaos/success