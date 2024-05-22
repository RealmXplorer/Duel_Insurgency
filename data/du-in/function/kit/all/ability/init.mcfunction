execute unless items entity @s[predicate=!du-in:runza_hold,tag=!flagGot,tag=!badBlock] weapon.mainhand #du-in:secondary run function du-in:kit/all/ability/activate
#execute if entity @s[predicate=!du-in:second_held,tag=!flagGot,tag=!badBlock] run function du-in:kit/all/ability/activate
execute if entity @s[tag=flagGot] run function du-in:kit/all/ability/flag
execute if entity @s[tag=badBlock] run function du-in:kit/all/ability/ground
scoreboard players reset @s kitUse