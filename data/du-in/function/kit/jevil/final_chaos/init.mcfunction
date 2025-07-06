#Fail
execute if entity @s[tag=!maxTP] run function du-in:kit/jevil/final_chaos/empty

#Success
execute if entity @s[tag=maxTP] run function du-in:kit/jevil/final_chaos/success

tag @s remove secKitActions