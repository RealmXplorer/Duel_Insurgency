execute unless entity @s[scores={Diamonds=1000..}] run function du-in:kit/all/buy/fail
execute if entity @s[scores={Diamonds=1000..}] run function du-in:kit/paz/buy/yes
clear @s player_head[custom_data={du-in:'pazHead'}]