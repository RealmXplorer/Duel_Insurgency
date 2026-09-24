#Fail
execute if entity @s[tag=!maxTP] run function du-in:kit/susie/will_change/empty

#Success
execute if entity @s[tag=maxTP] run function du-in:kit/susie/will_change/success

tag @s remove secKitActions