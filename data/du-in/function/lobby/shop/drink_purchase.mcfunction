advancement revoke @s only du-in:shop/interact_drink

execute if entity @s[scores={Diamonds=5..}] run function du-in:lobby/shop/drinks/buy
execute if entity @s[scores={Diamonds=..4}] run function du-in:skins/skin_menu/buy/fail