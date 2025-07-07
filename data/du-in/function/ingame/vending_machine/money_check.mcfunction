#Money
execute if entity @s[scores={saacMoneyCheck=25..}] run function du-in:kit/saac/money/quarter_item

execute if entity @s[scores={saacMoneyCheck=0}] run item replace entity @s hotbar.8 with air
execute if entity @s[scores={saacMoneyDollar=0}] run item replace entity @s hotbar.7 with air

execute if entity @s[scores={saacMoneyDollar=1..}] run function du-in:kit/saac/money/dollar_item