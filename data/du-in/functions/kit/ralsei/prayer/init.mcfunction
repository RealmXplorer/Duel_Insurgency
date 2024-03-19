#Fail
execute if entity @s[tag=!teamMode] if entity @s[scores={Health=14..}] run function du-in:kit/ralsei/prayer/full
execute if entity @s[tag=teamMode,tag=!maxTP] run function du-in:kit/ralsei/prayer/empty

#Success
execute if entity @s[tag=!teamMode,tag=maxTP] unless entity @s[scores={Health=14..}] run function du-in:kit/ralsei/prayer/success
execute if entity @s[tag=teamMode,tag=maxTP] run function du-in:kit/ralsei/prayer/success

tag @s remove secKitActions