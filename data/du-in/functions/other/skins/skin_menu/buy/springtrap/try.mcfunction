execute unless entity @s[scores={Diamonds=450..}] run function du-in:kit/all/buy/fail

execute if entity @s[scores={Diamonds=450..}] run function du-in:other/skins/skin_menu/buy/springtrap/success

clear @s player_head{springHead:1b}
execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items
