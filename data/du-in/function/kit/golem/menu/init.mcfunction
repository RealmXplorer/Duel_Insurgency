execute if entity @s[tag=skinMenu] run function du-in:kit/golem/menu/skins/display with storage du-in:temp current_kit
execute if entity @s[tag=!skinMenu] run function du-in:kit/golem/menu/display with storage du-in:temp current_kit

execute if entity @s[scores={kitList=1..}] run scoreboard players remove @s kitList 1

#3