execute unless entity @s[scores={Diamonds=400..}] run function du-in:skins/skin_menu/buy/fail

execute if entity @s[scores={Diamonds=400..}] run function du-in:skins/skin_menu/buy/clairen/success

clear @s player_head[custom_data={du-in:'clairenHead'}]
execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items
