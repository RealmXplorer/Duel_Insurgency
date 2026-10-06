execute if entity @s[tag=skinMenu] run function du-in:kit/cuphead/menu/skins/display
execute if entity @s[tag=!skinMenu] run function du-in:kit/cuphead/menu/display

execute if entity @s[scores={kitList=1..}] run scoreboard players remove @s kitList 1

#4