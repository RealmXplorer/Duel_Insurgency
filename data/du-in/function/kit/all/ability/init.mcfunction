execute unless items entity @s[predicate=!du-in:runza_hold,tag=!flagGot,tag=!airBlock,tag=!groundBlock,tag=!inTheModel] weapon.mainhand #du-in:secondary unless items entity @s weapon.mainhand iron_nugget unless entity @s[scores={abilityDelay=0..}] run function du-in:kit/all/ability/activate
execute if entity @s[tag=flagGot] run function du-in:kit/all/ability/titles/flag
execute if entity @s[tag=airBlock] run function du-in:kit/all/ability/titles/ground
execute if entity @s[tag=groundBlock] run function du-in:kit/all/ability/titles/air
execute if entity @s[tag=inTheModel] run function du-in:kit/all/ability/titles/in_model
scoreboard players reset @s kitUse