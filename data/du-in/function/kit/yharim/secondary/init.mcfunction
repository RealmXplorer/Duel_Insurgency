#Fail
execute if entity @s[tag=!rageMeter] run function du-in:kit/yharim/secondary/fail

#Success
execute if entity @s[tag=rageMeter] run function du-in:kit/yharim/secondary/success

tag @s remove secKitActions