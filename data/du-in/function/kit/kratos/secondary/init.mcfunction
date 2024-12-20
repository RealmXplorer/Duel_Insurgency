#Fail
execute if entity @s[tag=!rageMeter] run function du-in:kit/kratos/secondary/fail

#Success
execute if entity @s[tag=rageMeter] run function du-in:kit/kratos/secondary/success

tag @s remove secKitActions