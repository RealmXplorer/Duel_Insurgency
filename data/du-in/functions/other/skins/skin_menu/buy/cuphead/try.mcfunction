execute unless entity @s[scores={Diamonds=300..}] run function du-in:kit/all/buy/fail

execute if entity @s[scores={Diamonds=300..}] run function du-in:other/skins/skin_menu/buy/cuphead/success

clear @s player_head{cupHead:1b}
execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items