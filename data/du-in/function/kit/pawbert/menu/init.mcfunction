execute if entity @s[tag=skinMenu] run function du-in:kit/pawbert/menu/skins/display with storage du-in:temp current_kit
execute if entity @s[tag=!skinMenu] run function du-in:kit/pawbert/menu/display with storage du-in:temp current_kit

execute if entity @s[scores={kitList=1..}] run scoreboard players remove @s kitList 1

#4