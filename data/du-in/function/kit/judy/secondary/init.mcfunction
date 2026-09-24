tag @s remove secKitActions

#Fail
execute if entity @s[tag=!inspireFull] run return run function du-in:kit/judy/inspire/empty

#Success
function du-in:kit/judy/inspire/success