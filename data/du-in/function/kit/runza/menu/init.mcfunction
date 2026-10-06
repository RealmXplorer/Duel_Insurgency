execute if entity @s[tag=skinMenu] run function du-in:kit/runza/menu/skins/display
execute if entity @s[tag=!skinMenu] run function du-in:kit/runza/menu/display

execute if entity @s[scores={kitList=1..}] run scoreboard players remove @s kitList 1

#3