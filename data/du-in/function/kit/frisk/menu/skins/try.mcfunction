execute unless entity @s[scores={Diamonds=400..}] run function du-in:lobby/kitmenu/skins/actions/buy_fail

execute if entity @s[scores={Diamonds=400..}] run function du-in:kit/frisk/menu/skins/buy

clear @s player_head[custom_data={du-in:'friskHead'}]
execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items
