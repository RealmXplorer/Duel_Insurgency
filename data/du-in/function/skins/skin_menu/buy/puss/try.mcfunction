execute unless entity @s[scores={Diamonds=200..}] run function du-in:skins/skin_menu/buy/fail

execute if entity @s[scores={Diamonds=200..}] run function du-in:skins/skin_menu/buy/puss/success

clear @s player_head[custom_data={du-in:'pussHead'}]
execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items
