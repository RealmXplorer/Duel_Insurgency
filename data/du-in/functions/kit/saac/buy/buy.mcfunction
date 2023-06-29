execute unless entity @s[scores={Diamonds=750..}] run function du-in:kit/all/buy/fail
execute if entity @s[scores={Diamonds=750..}] run function du-in:kit/saac/buy/yes
clear @s player_head{saacHead:1b}