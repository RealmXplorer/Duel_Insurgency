scoreboard players reset @s kitUse

#Return error
execute if entity @s[tag=flagGot] run return run function du-in:kit/all/ability/titles/flag
execute if entity @s[tag=airBlock] run return run function du-in:kit/all/ability/titles/ground
execute if entity @s[tag=groundBlock] run return run function du-in:kit/all/ability/titles/air
execute if entity @s[tag=inTheModel] run return run function du-in:kit/all/ability/titles/in_model

#Give Ability
execute unless items entity @s[predicate=!du-in:runza_hold] weapon.mainhand #du-in:secondary unless items entity @s weapon.mainhand iron_nugget unless entity @s[scores={abilityDelay=0..}] run function du-in:kit/all/ability/activate