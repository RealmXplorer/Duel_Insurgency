execute unless items entity @s[predicate=!du-in:runza_hold,tag=!flagGot,tag=!airBlock,tag=!groundBlock] weapon.mainhand #du-in:secondary run function du-in:kit/all/ability/activate
execute if entity @s[tag=flagGot] run function du-in:kit/all/ability/titles/flag
execute if entity @s[tag=airBlock] run function du-in:kit/all/ability/titles/ground
execute if entity @s[tag=groundBlock] run function du-in:kit/all/ability/titles/air
scoreboard players reset @s kitUse