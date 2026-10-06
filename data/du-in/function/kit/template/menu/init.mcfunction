execute if entity @s[tag=skinMenu] run function du-in:kit/template/menu/skins/display
execute if entity @s[tag=!skinMenu] run function du-in:kit/template/menu/display

execute if entity @s[scores={kitList=1..}] run scoreboard players remove @s kitList 1

#?