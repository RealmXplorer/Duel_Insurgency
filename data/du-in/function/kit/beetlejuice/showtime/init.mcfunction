#Fail
execute if entity @s[tag=!maxBeetleDamage] run function du-in:kit/beetlejuice/showtime/fail

#Success
execute if entity @s[tag=maxBeetleDamage] run function du-in:kit/beetlejuice/showtime/start

tag @s remove secKitActions