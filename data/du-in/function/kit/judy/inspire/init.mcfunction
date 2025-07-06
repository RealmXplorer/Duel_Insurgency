#Fail
execute if entity @s[tag=!inspireFull] run function du-in:kit/judy/inspire/empty

#Success
execute if entity @s[tag=inspireFull] run function du-in:kit/judy/inspire/success

tag @s remove secKitActions