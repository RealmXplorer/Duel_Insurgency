#If Revolver Empty
execute if entity @s[scores={willoAmmo=0},predicate=!du-in:is_sneaking] run function du-in:kit/willo/revolver/empty

#Shoot
execute if entity @s[scores={willoAmmo=1..},predicate=!du-in:is_sneaking] run function du-in:kit/willo/revolver/shoot

#Title
title @s actionbar [{"color":"red","score":{"name":"@s","objective":"willoAmmo"}},{"color":"red","text":"/6"}]

#Reload
execute if entity @s[predicate=du-in:is_sneaking] run function du-in:kit/willo/revolver/reload/try

tag @s remove secKitActions
