execute if entity @s[tag=skinMenu] run function du-in:kit/jevil/menu/skins/display
execute if entity @s[tag=!skinMenu] run function du-in:kit/jevil/menu/display

execute if entity @s[scores={kitList=1..}] run scoreboard players remove @s kitList 1

#11