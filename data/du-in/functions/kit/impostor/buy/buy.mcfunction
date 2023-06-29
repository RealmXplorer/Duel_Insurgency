execute unless entity @s[scores={Diamonds=1250..}] run function du-in:kit/all/buy/fail
execute if entity @s[scores={Diamonds=1250..}] run function du-in:kit/impostor/buy/yes
clear @s player_head{susHead:1b}