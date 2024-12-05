execute unless entity @s[scores={Diamonds=600..}] run function du-in:other/skins/skin_menu/buy/fail

execute if entity @s[scores={Diamonds=600..}] run function du-in:other/skins/skin_menu/buy/ralsei/success

clear @s player_head[custom_data={du-in:'ralseiHead'}]
execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items
